package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONPath implements com.alibaba.fastjson.JSONAware {
    public static final long LENGTH = -1580386065683472715L;
    public static final long SIZE = 5614464919154503228L;
    private static java.util.concurrent.ConcurrentMap<java.lang.String, com.alibaba.fastjson.JSONPath> pathCache = new java.util.concurrent.ConcurrentHashMap(com.alibaba.fastjson.asm.Opcodes.IOR, 0.75f, 1);
    private boolean hasRefSegment;
    private boolean ignoreNullValue;
    private com.alibaba.fastjson.parser.ParserConfig parserConfig;
    private final java.lang.String path;
    private com.alibaba.fastjson.JSONPath.Segment[] segments;
    private com.alibaba.fastjson.serializer.SerializeConfig serializeConfig;

    /* JADX INFO: renamed from: com.alibaba.fastjson.JSONPath$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;

        static {
            int[] iArr = new int[com.alibaba.fastjson.JSONPath.Operator.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPath$Operator = iArr;
            try {
                iArr[com.alibaba.fastjson.JSONPath.Operator.EQ.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPath$Operator[com.alibaba.fastjson.JSONPath.Operator.NE.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPath$Operator[com.alibaba.fastjson.JSONPath.Operator.GE.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPath$Operator[com.alibaba.fastjson.JSONPath.Operator.GT.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPath$Operator[com.alibaba.fastjson.JSONPath.Operator.LE.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPath$Operator[com.alibaba.fastjson.JSONPath.Operator.LT.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    public static class ArrayAccessSegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final int index;

        public ArrayAccessSegment(int i5) {
            this.index = i5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.getArrayItem(obj2, this.index);
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (((com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer).seekArrayToItem(this.index) && context.eval) {
                context.object = defaultJSONParser.parse();
            }
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj) {
            return jSONPath.removeArrayItem(jSONPath, obj, this.index);
        }

        public boolean setValue(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.setArrayItem(jSONPath, obj, this.index, obj2);
        }
    }

    public static class Context {
        public final boolean eval;
        public java.lang.Object object;
        public final com.alibaba.fastjson.JSONPath.Context parent;

        public Context(com.alibaba.fastjson.JSONPath.Context context, boolean z4) {
            this.parent = context;
            this.eval = z4;
        }
    }

    public static class DoubleOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final com.alibaba.fastjson.JSONPath.Operator op;
        private final double value;

        public DoubleOpSegement(java.lang.String str, boolean z4, double d5, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z4);
            this.value = d5;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            double dDoubleValue = ((java.lang.Number) obj4).doubleValue();
            switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                case 1:
                    return dDoubleValue == this.value;
                case 2:
                    return dDoubleValue != this.value;
                case 3:
                    return dDoubleValue >= this.value;
                case 4:
                    return dDoubleValue > this.value;
                case 5:
                    return dDoubleValue <= this.value;
                case 6:
                    return dDoubleValue < this.value;
                default:
                    return false;
            }
        }
    }

    public interface Filter {
        boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);
    }

    public static class FilterGroup implements com.alibaba.fastjson.JSONPath.Filter {
        private boolean and;
        private java.util.List<com.alibaba.fastjson.JSONPath.Filter> fitlers;

        public FilterGroup(com.alibaba.fastjson.JSONPath.Filter filter, com.alibaba.fastjson.JSONPath.Filter filter2, boolean z4) {
            java.util.ArrayList arrayList = new java.util.ArrayList(2);
            this.fitlers = arrayList;
            arrayList.add(filter);
            this.fitlers.add(filter2);
            this.and = z4;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            if (this.and) {
                java.util.Iterator<com.alibaba.fastjson.JSONPath.Filter> it = this.fitlers.iterator();
                while (it.hasNext()) {
                    if (!it.next().apply(jSONPath, obj, obj2, obj3)) {
                        return false;
                    }
                }
                return true;
            }
            java.util.Iterator<com.alibaba.fastjson.JSONPath.Filter> it2 = this.fitlers.iterator();
            while (it2.hasNext()) {
                if (it2.next().apply(jSONPath, obj, obj2, obj3)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class FilterSegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final com.alibaba.fastjson.JSONPath.Filter filter;

        public FilterSegment(com.alibaba.fastjson.JSONPath.Filter filter) {
            this.filter = filter;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (obj2 == null) {
                return null;
            }
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
            if (!(obj2 instanceof java.lang.Iterable)) {
                if (this.filter.apply(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (java.lang.Object obj3 : (java.lang.Iterable) obj2) {
                if (this.filter.apply(jSONPath, obj, obj2, obj3)) {
                    jSONArray.add(obj3);
                }
            }
            return jSONArray;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            java.lang.Object obj = defaultJSONParser.parse();
            context.object = eval(jSONPath, obj, obj);
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (obj2 == null || !(obj2 instanceof java.lang.Iterable)) {
                return false;
            }
            java.util.Iterator it = ((java.lang.Iterable) obj2).iterator();
            while (it.hasNext()) {
                if (this.filter.apply(jSONPath, obj, obj2, it.next())) {
                    it.remove();
                }
            }
            return true;
        }
    }

    public static class FloorSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.FloorSegment instance = new com.alibaba.fastjson.JSONPath.FloorSegment();

        private static java.lang.Object floor(java.lang.Object obj) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof java.lang.Float) {
                return java.lang.Double.valueOf(java.lang.Math.floor(((java.lang.Float) obj).floatValue()));
            }
            if (obj instanceof java.lang.Double) {
                return java.lang.Double.valueOf(java.lang.Math.floor(((java.lang.Double) obj).doubleValue()));
            }
            if (obj instanceof java.math.BigDecimal) {
                return ((java.math.BigDecimal) obj).setScale(0, java.math.RoundingMode.FLOOR);
            }
            if ((obj instanceof java.lang.Byte) || (obj instanceof java.lang.Short) || (obj instanceof java.lang.Integer) || (obj instanceof java.lang.Long) || (obj instanceof java.math.BigInteger)) {
                return obj;
            }
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof com.alibaba.fastjson.JSONArray)) {
                return floor(obj2);
            }
            com.alibaba.fastjson.JSONArray jSONArray = (com.alibaba.fastjson.JSONArray) ((com.alibaba.fastjson.JSONArray) obj2).clone();
            for (int i5 = 0; i5 < jSONArray.size(); i5++) {
                java.lang.Object obj3 = jSONArray.get(i5);
                java.lang.Object objFloor = floor(obj3);
                if (objFloor != obj3) {
                    jSONArray.set(i5, objFloor);
                }
            }
            return jSONArray;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class IntBetweenSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final long endValue;
        private final boolean not;
        private final long startValue;

        public IntBetweenSegement(java.lang.String str, boolean z4, long j5, long j6, boolean z5) {
            super(str, z4);
            this.startValue = j5;
            this.endValue = j6;
            this.not = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                if (jLongExtractValue >= this.startValue && jLongExtractValue <= this.endValue) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    public static class IntInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final boolean not;
        private final long[] values;

        public IntInSegement(java.lang.String str, boolean z4, long[] jArr, boolean z5) {
            super(str, z4);
            this.values = jArr;
            this.not = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                for (long j5 : this.values) {
                    if (j5 == jLongExtractValue) {
                        return !this.not;
                    }
                }
            }
            return this.not;
        }
    }

    public static class IntObjInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final boolean not;
        private final java.lang.Long[] values;

        public IntObjInSegement(java.lang.String str, boolean z4, java.lang.Long[] lArr, boolean z5) {
            super(str, z4);
            this.values = lArr;
            this.not = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            int i5 = 0;
            if (obj4 == null) {
                java.lang.Long[] lArr = this.values;
                int length = lArr.length;
                while (i5 < length) {
                    if (lArr[i5] == null) {
                        return !this.not;
                    }
                    i5++;
                }
                return this.not;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                java.lang.Long[] lArr2 = this.values;
                int length2 = lArr2.length;
                while (i5 < length2) {
                    java.lang.Long l5 = lArr2[i5];
                    if (l5 != null && l5.longValue() == jLongExtractValue) {
                        return !this.not;
                    }
                    i5++;
                }
            }
            return this.not;
        }
    }

    public static class IntOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final com.alibaba.fastjson.JSONPath.Operator op;
        private final long value;
        private java.math.BigDecimal valueDecimal;
        private java.lang.Double valueDouble;
        private java.lang.Float valueFloat;

        public IntOpSegement(java.lang.String str, boolean z4, long j5, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z4);
            this.value = j5;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            if (obj4 instanceof java.math.BigDecimal) {
                if (this.valueDecimal == null) {
                    this.valueDecimal = java.math.BigDecimal.valueOf(this.value);
                }
                int iCompareTo = this.valueDecimal.compareTo((java.math.BigDecimal) obj4);
                switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                    case 1:
                        return iCompareTo == 0;
                    case 2:
                        return iCompareTo != 0;
                    case 3:
                        return iCompareTo <= 0;
                    case 4:
                        return iCompareTo < 0;
                    case 5:
                        return iCompareTo >= 0;
                    case 6:
                        return iCompareTo > 0;
                    default:
                        return false;
                }
            }
            if (obj4 instanceof java.lang.Float) {
                if (this.valueFloat == null) {
                    this.valueFloat = java.lang.Float.valueOf(this.value);
                }
                int iCompareTo2 = this.valueFloat.compareTo((java.lang.Float) obj4);
                switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                    case 1:
                        return iCompareTo2 == 0;
                    case 2:
                        return iCompareTo2 != 0;
                    case 3:
                        return iCompareTo2 <= 0;
                    case 4:
                        return iCompareTo2 < 0;
                    case 5:
                        return iCompareTo2 >= 0;
                    case 6:
                        return iCompareTo2 > 0;
                    default:
                        return false;
                }
            }
            if (!(obj4 instanceof java.lang.Double)) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                    case 1:
                        return jLongExtractValue == this.value;
                    case 2:
                        return jLongExtractValue != this.value;
                    case 3:
                        return jLongExtractValue >= this.value;
                    case 4:
                        return jLongExtractValue > this.value;
                    case 5:
                        return jLongExtractValue <= this.value;
                    case 6:
                        return jLongExtractValue < this.value;
                    default:
                        return false;
                }
            }
            if (this.valueDouble == null) {
                this.valueDouble = java.lang.Double.valueOf(this.value);
            }
            int iCompareTo3 = this.valueDouble.compareTo((java.lang.Double) obj4);
            switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                case 1:
                    return iCompareTo3 == 0;
                case 2:
                    return iCompareTo3 != 0;
                case 3:
                    return iCompareTo3 <= 0;
                case 4:
                    return iCompareTo3 < 0;
                case 5:
                    return iCompareTo3 >= 0;
                case 6:
                    return iCompareTo3 > 0;
                default:
                    return false;
            }
        }
    }

    public static class JSONPathParser {
        private char ch;
        private boolean hasRefSegment;
        private int level;
        private final java.lang.String path;
        private int pos;
        private static final java.lang.String strArrayRegex = "'\\s*,\\s*'";
        private static final java.util.regex.Pattern strArrayPatternx = java.util.regex.Pattern.compile(strArrayRegex);

        public JSONPathParser(java.lang.String str) {
            this.path = str;
            next();
        }

        public static boolean isDigitFirst(char c5) {
            return c5 == '-' || c5 == '+' || (c5 >= '0' && c5 <= '9');
        }

        public void accept(char c5) {
            if (this.ch == ' ') {
                next();
            }
            if (this.ch == c5) {
                if (isEOF()) {
                    return;
                }
                next();
            } else {
                throw new com.alibaba.fastjson.JSONPathException("expect '" + c5 + ", but '" + this.ch + "'");
            }
        }

        public com.alibaba.fastjson.JSONPath.Segment buildArraySegement(java.lang.String str) {
            int length = str.length();
            char cCharAt = str.charAt(0);
            int i5 = length - 1;
            char cCharAt2 = str.charAt(i5);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                java.lang.String strSubstring = str.substring(1, i5);
                return (iIndexOf == -1 || !strArrayPatternx.matcher(str).find()) ? new com.alibaba.fastjson.JSONPath.PropertySegment(strSubstring, false) : new com.alibaba.fastjson.JSONPath.MultiPropertySegment(strSubstring.split(strArrayRegex));
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                if (com.alibaba.fastjson.util.TypeUtils.isNumber(str)) {
                    try {
                        return new com.alibaba.fastjson.JSONPath.ArrayAccessSegment(java.lang.Integer.parseInt(str));
                    } catch (java.lang.NumberFormatException unused) {
                        return new com.alibaba.fastjson.JSONPath.PropertySegment(str, false);
                    }
                }
                if (str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') {
                    str = str.substring(1, str.length() - 1);
                }
                return new com.alibaba.fastjson.JSONPath.PropertySegment(str, false);
            }
            if (iIndexOf != -1) {
                java.lang.String[] strArrSplit = str.split(",");
                int[] iArr = new int[strArrSplit.length];
                for (int i6 = 0; i6 < strArrSplit.length; i6++) {
                    iArr[i6] = java.lang.Integer.parseInt(strArrSplit[i6]);
                }
                return new com.alibaba.fastjson.JSONPath.MultiIndexSegment(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.String[] strArrSplit2 = str.split(":");
            int length2 = strArrSplit2.length;
            int[] iArr2 = new int[length2];
            for (int i7 = 0; i7 < strArrSplit2.length; i7++) {
                java.lang.String str2 = strArrSplit2[i7];
                if (str2.length() != 0) {
                    iArr2[i7] = java.lang.Integer.parseInt(str2);
                } else {
                    if (i7 != 0) {
                        throw new java.lang.UnsupportedOperationException();
                    }
                    iArr2[i7] = 0;
                }
            }
            int i8 = iArr2[0];
            int i9 = length2 > 1 ? iArr2[1] : -1;
            int i10 = length2 == 3 ? iArr2[2] : 1;
            if (i9 < 0 || i9 >= i8) {
                if (i10 > 0) {
                    return new com.alibaba.fastjson.JSONPath.RangeSegment(i8, i9, i10);
                }
                throw new java.lang.UnsupportedOperationException("step must greater than zero : " + i10);
            }
            throw new java.lang.UnsupportedOperationException("end must greater than or equals start. start " + i8 + ",  end " + i9);
        }

        public com.alibaba.fastjson.JSONPath.Segment[] explain() {
            java.lang.String str = this.path;
            if (str == null || str.length() == 0) {
                throw new java.lang.IllegalArgumentException();
            }
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = new com.alibaba.fastjson.JSONPath.Segment[8];
            while (true) {
                com.alibaba.fastjson.JSONPath.Segment segement = readSegement();
                if (segement == null) {
                    break;
                }
                if (segement instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
                    com.alibaba.fastjson.JSONPath.PropertySegment propertySegment = (com.alibaba.fastjson.JSONPath.PropertySegment) segement;
                    if (propertySegment.deep || !propertySegment.propertyName.equals("*")) {
                    }
                }
                int i5 = this.level;
                if (i5 == segmentArr.length) {
                    com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = new com.alibaba.fastjson.JSONPath.Segment[(i5 * 3) / 2];
                    java.lang.System.arraycopy(segmentArr, 0, segmentArr2, 0, i5);
                    segmentArr = segmentArr2;
                }
                int i6 = this.level;
                this.level = i6 + 1;
                segmentArr[i6] = segement;
            }
            int i7 = this.level;
            if (i7 == segmentArr.length) {
                return segmentArr;
            }
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr3 = new com.alibaba.fastjson.JSONPath.Segment[i7];
            java.lang.System.arraycopy(segmentArr, 0, segmentArr3, 0, i7);
            return segmentArr3;
        }

        public com.alibaba.fastjson.JSONPath.Filter filterRest(com.alibaba.fastjson.JSONPath.Filter filter) {
            char c5 = this.ch;
            boolean z4 = true;
            boolean z5 = c5 == '&';
            if ((c5 != '&' || getNextChar() != '&') && (this.ch != '|' || getNextChar() != '|')) {
                return filter;
            }
            next();
            next();
            if (this.ch == '(') {
                next();
            } else {
                z4 = false;
            }
            while (this.ch == ' ') {
                next();
            }
            com.alibaba.fastjson.JSONPath.FilterGroup filterGroup = new com.alibaba.fastjson.JSONPath.FilterGroup(filter, (com.alibaba.fastjson.JSONPath.Filter) parseArrayAccessFilter(false), z5);
            if (z4 && this.ch == ')') {
                next();
            }
            return filterGroup;
        }

        public char getNextChar() {
            return this.path.charAt(this.pos);
        }

        public boolean isEOF() {
            return this.pos >= this.path.length();
        }

        public void next() {
            java.lang.String str = this.path;
            int i5 = this.pos;
            this.pos = i5 + 1;
            this.ch = str.charAt(i5);
        }

        public com.alibaba.fastjson.JSONPath.Segment parseArrayAccess(boolean z4) {
            java.lang.Object arrayAccessFilter = parseArrayAccessFilter(z4);
            return arrayAccessFilter instanceof com.alibaba.fastjson.JSONPath.Segment ? (com.alibaba.fastjson.JSONPath.Segment) arrayAccessFilter : new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) arrayAccessFilter);
        }

        public java.lang.Object parseArrayAccessFilter(boolean z4) {
            int i5;
            boolean z5;
            boolean z6;
            char c5;
            char c6;
            char c7;
            char c8;
            char c9;
            char c10;
            java.lang.String str;
            java.lang.String[] strArr;
            java.lang.String str2;
            java.lang.String str3;
            com.alibaba.fastjson.JSONPath.Filter matchSegement;
            com.alibaba.fastjson.JSONPath.Filter stringOpSegement;
            char c11;
            char c12;
            char c13;
            char c14;
            int i6;
            char c15;
            char c16;
            char c17;
            char c18;
            char c19;
            int i7;
            java.lang.String strReplaceAll;
            int i8;
            char cCharAt;
            char c20;
            if (z4) {
                accept('[');
            }
            if (this.ch == '?') {
                next();
                accept('(');
                i5 = 1;
                while (this.ch == '(') {
                    next();
                    i5++;
                }
                z5 = true;
            } else {
                i5 = 0;
                z5 = false;
            }
            skipWhitespace();
            if (!z5 && !com.alibaba.fastjson.util.IOUtils.firstIdentifier(this.ch) && !java.lang.Character.isJavaIdentifierStart(this.ch) && (c18 = this.ch) != '\\' && c18 != '@') {
                int i9 = this.pos - 1;
                while (true) {
                    char c21 = this.ch;
                    if (c21 == ']' || c21 == '/' || isEOF() || !((c20 = this.ch) != '.' || z5 || z5 || c18 == '\'')) {
                        break;
                    }
                    if (c20 == '\\') {
                        next();
                    }
                    next();
                }
                if (z4 || (c19 = this.ch) == '/' || c19 == '.') {
                    int i10 = this.pos;
                    i7 = i10 - 1;
                } else {
                    i7 = this.pos;
                }
                java.lang.String strSubstring = this.path.substring(i9, i7);
                if (strSubstring.indexOf(92) != 0) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(strSubstring.length());
                    int i11 = 0;
                    while (i11 < strSubstring.length()) {
                        char cCharAt2 = strSubstring.charAt(i11);
                        if (cCharAt2 == '\\' && i11 < strSubstring.length() - 1 && ((cCharAt = strSubstring.charAt((i8 = i11 + 1))) == '@' || cCharAt2 == '\\' || cCharAt2 == '\"')) {
                            sb.append(cCharAt);
                            i11 = i8;
                        } else {
                            sb.append(cCharAt2);
                        }
                        i11++;
                    }
                    strSubstring = sb.toString();
                }
                if (strSubstring.indexOf("\\.") == -1) {
                    com.alibaba.fastjson.JSONPath.Segment segmentBuildArraySegement = buildArraySegement(strSubstring);
                    if (z4 && !isEOF()) {
                        accept(']');
                    }
                    return segmentBuildArraySegement;
                }
                if (c18 == '\'' && strSubstring.length() > 2 && strSubstring.charAt(strSubstring.length() - 1) == c18) {
                    strReplaceAll = strSubstring.substring(1, strSubstring.length() - 1);
                } else {
                    strReplaceAll = strSubstring.replaceAll("\\\\\\.", "\\.");
                    if (strReplaceAll.indexOf("\\-") != -1) {
                        strReplaceAll = strReplaceAll.replaceAll("\\\\-", "-");
                    }
                }
                if (z5) {
                    accept(')');
                }
                return new com.alibaba.fastjson.JSONPath.PropertySegment(strReplaceAll, false);
            }
            if (this.ch == '@') {
                next();
                accept('.');
            }
            java.lang.String name = readName();
            skipWhitespace();
            if (z5 && this.ch == ')') {
                next();
                com.alibaba.fastjson.JSONPath.Filter notNullSegement = new com.alibaba.fastjson.JSONPath.NotNullSegement(name, false);
                while (true) {
                    c17 = this.ch;
                    if (c17 != ' ') {
                        break;
                    }
                    next();
                }
                if (c17 == '&' || c17 == '|') {
                    notNullSegement = filterRest(notNullSegement);
                }
                if (z4) {
                    accept(']');
                }
                return notNullSegement;
            }
            if (z4 && this.ch == ']') {
                if (isEOF() && name.equals("last")) {
                    return new com.alibaba.fastjson.JSONPath.MultiIndexSegment(new int[]{-1});
                }
                next();
                com.alibaba.fastjson.JSONPath.Filter notNullSegement2 = new com.alibaba.fastjson.JSONPath.NotNullSegement(name, false);
                while (true) {
                    c16 = this.ch;
                    if (c16 != ' ') {
                        break;
                    }
                    next();
                }
                if (c16 == '&' || c16 == '|') {
                    notNullSegement2 = filterRest(notNullSegement2);
                }
                accept(')');
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return notNullSegement2;
            }
            skipWhitespace();
            if (this.ch == '(') {
                next();
                accept(')');
                skipWhitespace();
                z6 = true;
            } else {
                z6 = false;
            }
            com.alibaba.fastjson.JSONPath.Operator op = readOp();
            skipWhitespace();
            if (op == com.alibaba.fastjson.JSONPath.Operator.BETWEEN || op == com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN) {
                boolean z7 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN;
                java.lang.Object value = readValue();
                if (!"and".equalsIgnoreCase(readName())) {
                    throw new com.alibaba.fastjson.JSONPathException(this.path);
                }
                java.lang.Object value2 = readValue();
                if (value == null || value2 == null) {
                    throw new com.alibaba.fastjson.JSONPathException(this.path);
                }
                if (com.alibaba.fastjson.JSONPath.isInt(value.getClass()) && com.alibaba.fastjson.JSONPath.isInt(value2.getClass())) {
                    return new com.alibaba.fastjson.JSONPath.IntBetweenSegement(name, z6, com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) value), com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) value2), z7);
                }
                throw new com.alibaba.fastjson.JSONPathException(this.path);
            }
            if (op == com.alibaba.fastjson.JSONPath.Operator.IN || op == com.alibaba.fastjson.JSONPath.Operator.NOT_IN) {
                boolean z8 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_IN;
                accept('(');
                com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
                jSONArray.add(readValue());
                while (true) {
                    skipWhitespace();
                    if (this.ch != ',') {
                        break;
                    }
                    next();
                    jSONArray.add(readValue());
                }
                boolean z9 = true;
                boolean z10 = true;
                boolean z11 = true;
                for (java.lang.Object obj : jSONArray) {
                    if (obj != null) {
                        java.lang.Class<?> cls = obj.getClass();
                        if (z9 && cls != java.lang.Byte.class && cls != java.lang.Short.class && cls != java.lang.Integer.class && cls != java.lang.Long.class) {
                            z9 = false;
                            z11 = false;
                        }
                        if (z10 && cls != java.lang.String.class) {
                            z10 = false;
                        }
                    } else if (z9) {
                        z9 = false;
                    }
                }
                if (jSONArray.size() == 1 && jSONArray.get(0) == null) {
                    com.alibaba.fastjson.JSONPath.Filter notNullSegement3 = z8 ? new com.alibaba.fastjson.JSONPath.NotNullSegement(name, z6) : new com.alibaba.fastjson.JSONPath.NullSegement(name, z6);
                    while (true) {
                        c10 = this.ch;
                        if (c10 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c10 == '&' || c10 == '|') {
                        notNullSegement3 = filterRest(notNullSegement3);
                    }
                    accept(')');
                    if (z5) {
                        accept(')');
                    }
                    if (z4) {
                        accept(']');
                    }
                    return notNullSegement3;
                }
                if (z9) {
                    if (jSONArray.size() == 1) {
                        com.alibaba.fastjson.JSONPath.Filter intOpSegement = new com.alibaba.fastjson.JSONPath.IntOpSegement(name, z6, com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) jSONArray.get(0)), z8 ? com.alibaba.fastjson.JSONPath.Operator.NE : com.alibaba.fastjson.JSONPath.Operator.EQ);
                        while (true) {
                            c9 = this.ch;
                            if (c9 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c9 == '&' || c9 == '|') {
                            intOpSegement = filterRest(intOpSegement);
                        }
                        accept(')');
                        if (z5) {
                            accept(')');
                        }
                        if (z4) {
                            accept(']');
                        }
                        return intOpSegement;
                    }
                    int size = jSONArray.size();
                    long[] jArr = new long[size];
                    for (int i12 = 0; i12 < size; i12++) {
                        jArr[i12] = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) jSONArray.get(i12));
                    }
                    com.alibaba.fastjson.JSONPath.Filter intInSegement = new com.alibaba.fastjson.JSONPath.IntInSegement(name, z6, jArr, z8);
                    while (true) {
                        c8 = this.ch;
                        if (c8 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c8 == '&' || c8 == '|') {
                        intInSegement = filterRest(intInSegement);
                    }
                    accept(')');
                    if (z5) {
                        accept(')');
                    }
                    if (z4) {
                        accept(']');
                    }
                    return intInSegement;
                }
                if (!z10) {
                    if (!z11) {
                        throw new java.lang.UnsupportedOperationException();
                    }
                    int size2 = jSONArray.size();
                    java.lang.Long[] lArr = new java.lang.Long[size2];
                    for (int i13 = 0; i13 < size2; i13++) {
                        java.lang.Number number = (java.lang.Number) jSONArray.get(i13);
                        if (number != null) {
                            lArr[i13] = java.lang.Long.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number));
                        }
                    }
                    com.alibaba.fastjson.JSONPath.Filter intObjInSegement = new com.alibaba.fastjson.JSONPath.IntObjInSegement(name, z6, lArr, z8);
                    while (true) {
                        c5 = this.ch;
                        if (c5 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c5 == '&' || c5 == '|') {
                        intObjInSegement = filterRest(intObjInSegement);
                    }
                    accept(')');
                    if (z5) {
                        accept(')');
                    }
                    if (z4) {
                        accept(']');
                    }
                    return intObjInSegement;
                }
                if (jSONArray.size() == 1) {
                    com.alibaba.fastjson.JSONPath.Filter stringOpSegement2 = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z6, (java.lang.String) jSONArray.get(0), z8 ? com.alibaba.fastjson.JSONPath.Operator.NE : com.alibaba.fastjson.JSONPath.Operator.EQ);
                    while (true) {
                        c7 = this.ch;
                        if (c7 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c7 == '&' || c7 == '|') {
                        stringOpSegement2 = filterRest(stringOpSegement2);
                    }
                    accept(')');
                    if (z5) {
                        accept(')');
                    }
                    if (z4) {
                        accept(']');
                    }
                    return stringOpSegement2;
                }
                java.lang.String[] strArr2 = new java.lang.String[jSONArray.size()];
                jSONArray.toArray(strArr2);
                com.alibaba.fastjson.JSONPath.Filter stringInSegement = new com.alibaba.fastjson.JSONPath.StringInSegement(name, z6, strArr2, z8);
                while (true) {
                    c6 = this.ch;
                    if (c6 != ' ') {
                        break;
                    }
                    next();
                }
                if (c6 == '&' || c6 == '|') {
                    stringInSegement = filterRest(stringInSegement);
                }
                accept(')');
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return stringInSegement;
            }
            char c22 = this.ch;
            if (c22 == '\'' || c22 == '\"') {
                java.lang.String string = readString();
                if (op == com.alibaba.fastjson.JSONPath.Operator.RLIKE) {
                    matchSegement = new com.alibaba.fastjson.JSONPath.RlikeSegement(name, z6, string, false);
                } else {
                    if (op == com.alibaba.fastjson.JSONPath.Operator.NOT_RLIKE) {
                        stringOpSegement = new com.alibaba.fastjson.JSONPath.RlikeSegement(name, z6, string, true);
                    } else if (op == com.alibaba.fastjson.JSONPath.Operator.LIKE || op == com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE) {
                        while (string.indexOf("%%") != -1) {
                            string = string.replaceAll("%%", "%");
                        }
                        boolean z12 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE;
                        int iIndexOf = string.indexOf(37);
                        if (iIndexOf == -1) {
                            stringOpSegement = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z6, string, op == com.alibaba.fastjson.JSONPath.Operator.LIKE ? com.alibaba.fastjson.JSONPath.Operator.EQ : com.alibaba.fastjson.JSONPath.Operator.NE);
                        } else {
                            java.lang.String[] strArrSplit = string.split("%");
                            if (iIndexOf != 0) {
                                if (string.charAt(string.length() - 1) == '%') {
                                    if (strArrSplit.length == 1) {
                                        str3 = strArrSplit[0];
                                    } else {
                                        strArr = strArrSplit;
                                        str = null;
                                        str2 = null;
                                    }
                                } else if (strArrSplit.length == 1) {
                                    str3 = strArrSplit[0];
                                } else if (strArrSplit.length == 2) {
                                    str = strArrSplit[0];
                                    str2 = strArrSplit[1];
                                    strArr = null;
                                } else {
                                    java.lang.String str4 = strArrSplit[0];
                                    java.lang.String str5 = strArrSplit[strArrSplit.length - 1];
                                    int length = strArrSplit.length - 2;
                                    java.lang.String[] strArr3 = new java.lang.String[length];
                                    java.lang.System.arraycopy(strArrSplit, 1, strArr3, 0, length);
                                    str = str4;
                                    strArr = strArr3;
                                    str2 = str5;
                                }
                                str = str3;
                                str2 = null;
                                strArr = null;
                            } else if (string.charAt(string.length() - 1) == '%') {
                                int length2 = strArrSplit.length - 1;
                                java.lang.String[] strArr4 = new java.lang.String[length2];
                                java.lang.System.arraycopy(strArrSplit, 1, strArr4, 0, length2);
                                strArr = strArr4;
                                str = null;
                                str2 = null;
                            } else {
                                java.lang.String str6 = strArrSplit[strArrSplit.length - 1];
                                if (strArrSplit.length > 2) {
                                    int length3 = strArrSplit.length - 2;
                                    java.lang.String[] strArr5 = new java.lang.String[length3];
                                    java.lang.System.arraycopy(strArrSplit, 1, strArr5, 0, length3);
                                    str2 = str6;
                                    strArr = strArr5;
                                    str = null;
                                } else {
                                    str2 = str6;
                                    str = null;
                                    strArr = null;
                                }
                            }
                            matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z6, str, str2, strArr, z12);
                        }
                    } else {
                        matchSegement = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z6, string, op);
                    }
                    matchSegement = stringOpSegement;
                }
                while (true) {
                    c11 = this.ch;
                    if (c11 != ' ') {
                        break;
                    }
                    next();
                }
                if (c11 == '&' || c11 == '|') {
                    matchSegement = filterRest(matchSegement);
                }
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return matchSegement;
            }
            if (isDigitFirst(c22)) {
                long longValue = readLongValue();
                double doubleValue = this.ch == '.' ? readDoubleValue(longValue) : 0.0d;
                com.alibaba.fastjson.JSONPath.Filter intOpSegement2 = doubleValue == 0.0d ? new com.alibaba.fastjson.JSONPath.IntOpSegement(name, z6, longValue, op) : new com.alibaba.fastjson.JSONPath.DoubleOpSegement(name, z6, doubleValue, op);
                while (true) {
                    c15 = this.ch;
                    if (c15 != ' ') {
                        break;
                    }
                    next();
                }
                if (i5 > 1 && c15 == ')') {
                    next();
                }
                char c23 = this.ch;
                if (c23 == '&' || c23 == '|') {
                    intOpSegement2 = filterRest(intOpSegement2);
                }
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return intOpSegement2;
            }
            char c24 = this.ch;
            if (c24 == '$') {
                com.alibaba.fastjson.JSONPath.RefOpSegement refOpSegement = new com.alibaba.fastjson.JSONPath.RefOpSegement(name, z6, readSegement(), op);
                this.hasRefSegment = true;
                while (this.ch == ' ') {
                    next();
                }
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return refOpSegement;
            }
            if (c24 == '/') {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                while (true) {
                    next();
                    char c25 = this.ch;
                    if (c25 == '/') {
                        break;
                    }
                    if (c25 == '\\') {
                        next();
                        sb2.append(this.ch);
                    } else {
                        sb2.append(c25);
                    }
                }
                next();
                if (this.ch == 'i') {
                    next();
                    i6 = 2;
                } else {
                    i6 = 0;
                }
                com.alibaba.fastjson.JSONPath.RegMatchSegement regMatchSegement = new com.alibaba.fastjson.JSONPath.RegMatchSegement(name, z6, java.util.regex.Pattern.compile(sb2.toString(), i6), op);
                if (z5) {
                    accept(')');
                }
                if (z4) {
                    accept(']');
                }
                return regMatchSegement;
            }
            if (c24 == 'n') {
                if ("null".equals(readName())) {
                    com.alibaba.fastjson.JSONPath.Filter nullSegement = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.NullSegement(name, z6) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.NotNullSegement(name, z6) : null;
                    if (nullSegement != null) {
                        while (true) {
                            c14 = this.ch;
                            if (c14 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c14 == '&' || c14 == '|') {
                            nullSegement = filterRest(nullSegement);
                        }
                    }
                    if (z5) {
                        accept(')');
                    }
                    accept(']');
                    if (nullSegement != null) {
                        return nullSegement;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            } else if (c24 == 't') {
                if ("true".equals(readName())) {
                    com.alibaba.fastjson.JSONPath.Filter valueSegment = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z6, java.lang.Boolean.TRUE, true) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z6, java.lang.Boolean.TRUE, false) : null;
                    if (valueSegment != null) {
                        while (true) {
                            c13 = this.ch;
                            if (c13 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c13 == '&' || c13 == '|') {
                            valueSegment = filterRest(valueSegment);
                        }
                    }
                    if (z5) {
                        accept(')');
                    }
                    accept(']');
                    if (valueSegment != null) {
                        return valueSegment;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            } else if (c24 == 'f' && "false".equals(readName())) {
                com.alibaba.fastjson.JSONPath.Filter valueSegment2 = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z6, java.lang.Boolean.FALSE, true) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z6, java.lang.Boolean.FALSE, false) : null;
                if (valueSegment2 != null) {
                    while (true) {
                        c12 = this.ch;
                        if (c12 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c12 == '&' || c12 == '|') {
                        valueSegment2 = filterRest(valueSegment2);
                    }
                }
                if (z5) {
                    accept(')');
                }
                accept(']');
                if (valueSegment2 != null) {
                    return valueSegment2;
                }
                throw new java.lang.UnsupportedOperationException();
            }
            throw new java.lang.UnsupportedOperationException();
        }

        public double readDoubleValue(long j5) {
            int i5 = this.pos - 1;
            next();
            while (true) {
                char c5 = this.ch;
                if (c5 < '0' || c5 > '9') {
                    break;
                }
                next();
            }
            return java.lang.Double.parseDouble(this.path.substring(i5, this.pos - 1)) + j5;
        }

        public long readLongValue() {
            int i5 = this.pos - 1;
            char c5 = this.ch;
            if (c5 == '+' || c5 == '-') {
                next();
            }
            while (true) {
                char c6 = this.ch;
                if (c6 < '0' || c6 > '9') {
                    break;
                }
                next();
            }
            return java.lang.Long.parseLong(this.path.substring(i5, this.pos - 1));
        }

        public java.lang.String readName() {
            skipWhitespace();
            char c5 = this.ch;
            if (c5 != '\\' && !java.lang.Character.isJavaIdentifierStart(c5)) {
                throw new com.alibaba.fastjson.JSONPathException("illeal jsonpath syntax. " + this.path);
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            while (!isEOF()) {
                char c6 = this.ch;
                if (c6 == '\\') {
                    next();
                    sb.append(this.ch);
                    if (isEOF()) {
                        return sb.toString();
                    }
                    next();
                } else {
                    if (!java.lang.Character.isJavaIdentifierPart(c6)) {
                        break;
                    }
                    sb.append(this.ch);
                    next();
                }
            }
            if (isEOF() && java.lang.Character.isJavaIdentifierPart(this.ch)) {
                sb.append(this.ch);
            }
            return sb.toString();
        }

        public com.alibaba.fastjson.JSONPath.Operator readOp() {
            com.alibaba.fastjson.JSONPath.Operator operator;
            char c5 = this.ch;
            if (c5 == '=') {
                next();
                char c6 = this.ch;
                if (c6 == '~') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.REG_MATCH;
                } else if (c6 == '=') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.EQ;
                } else {
                    operator = com.alibaba.fastjson.JSONPath.Operator.EQ;
                }
            } else if (c5 == '!') {
                next();
                accept('=');
                operator = com.alibaba.fastjson.JSONPath.Operator.NE;
            } else if (c5 == '<') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.LE;
                } else {
                    operator = com.alibaba.fastjson.JSONPath.Operator.LT;
                }
            } else if (c5 == '>') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.GE;
                } else {
                    operator = com.alibaba.fastjson.JSONPath.Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            java.lang.String name = readName();
            if ("not".equalsIgnoreCase(name)) {
                skipWhitespace();
                java.lang.String name2 = readName();
                if ("like".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE;
                }
                if ("rlike".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_RLIKE;
                }
                if ("in".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_IN;
                }
                if ("between".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN;
                }
                throw new java.lang.UnsupportedOperationException();
            }
            if ("nin".equalsIgnoreCase(name)) {
                return com.alibaba.fastjson.JSONPath.Operator.NOT_IN;
            }
            if ("like".equalsIgnoreCase(name)) {
                return com.alibaba.fastjson.JSONPath.Operator.LIKE;
            }
            if ("rlike".equalsIgnoreCase(name)) {
                return com.alibaba.fastjson.JSONPath.Operator.RLIKE;
            }
            if ("in".equalsIgnoreCase(name)) {
                return com.alibaba.fastjson.JSONPath.Operator.IN;
            }
            if ("between".equalsIgnoreCase(name)) {
                return com.alibaba.fastjson.JSONPath.Operator.BETWEEN;
            }
            throw new java.lang.UnsupportedOperationException();
        }

        public com.alibaba.fastjson.JSONPath.Segment readSegement() {
            boolean z4;
            if (this.level == 0 && this.path.length() == 1) {
                if (isDigitFirst(this.ch)) {
                    return new com.alibaba.fastjson.JSONPath.ArrayAccessSegment(this.ch - '0');
                }
                char c5 = this.ch;
                if ((c5 >= 'a' && c5 <= 'z') || (c5 >= 'A' && c5 <= 'Z')) {
                    return new com.alibaba.fastjson.JSONPath.PropertySegment(java.lang.Character.toString(c5), false);
                }
            }
            while (!isEOF()) {
                skipWhitespace();
                char c6 = this.ch;
                if (c6 != '$') {
                    if (c6 != '.' && c6 != '/') {
                        if (c6 == '[') {
                            return parseArrayAccess(true);
                        }
                        if (this.level == 0) {
                            return new com.alibaba.fastjson.JSONPath.PropertySegment(readName(), false);
                        }
                        if (c6 == '?') {
                            return new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) parseArrayAccessFilter(false));
                        }
                        throw new com.alibaba.fastjson.JSONPathException("not support jsonpath : " + this.path);
                    }
                    next();
                    if (c6 == '.' && this.ch == '.') {
                        next();
                        int length = this.path.length();
                        int i5 = this.pos;
                        if (length > i5 + 3 && this.ch == '[' && this.path.charAt(i5) == '*' && this.path.charAt(this.pos + 1) == ']' && this.path.charAt(this.pos + 2) == '.') {
                            next();
                            next();
                            next();
                            next();
                        }
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    char c7 = this.ch;
                    if (c7 == '*' || (z4 && c7 == '[')) {
                        boolean z5 = c7 == '[';
                        if (!isEOF()) {
                            next();
                        }
                        if (z4) {
                            return z5 ? com.alibaba.fastjson.JSONPath.WildCardSegment.instance_deep_objectOnly : com.alibaba.fastjson.JSONPath.WildCardSegment.instance_deep;
                        }
                        return com.alibaba.fastjson.JSONPath.WildCardSegment.instance;
                    }
                    if (isDigitFirst(c7)) {
                        return parseArrayAccess(false);
                    }
                    java.lang.String name = readName();
                    if (this.ch != '(') {
                        return new com.alibaba.fastjson.JSONPath.PropertySegment(name, z4);
                    }
                    next();
                    if (this.ch != ')') {
                        throw new com.alibaba.fastjson.JSONPathException("not support jsonpath : " + this.path);
                    }
                    if (!isEOF()) {
                        next();
                    }
                    if ("size".equals(name) || "length".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.SizeSegment.instance;
                    }
                    if ("max".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.MaxSegment.instance;
                    }
                    if ("min".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.MinSegment.instance;
                    }
                    if ("keySet".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.KeySetSegment.instance;
                    }
                    if ("type".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.TypeSegment.instance;
                    }
                    if ("floor".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.FloorSegment.instance;
                    }
                    throw new com.alibaba.fastjson.JSONPathException("not support jsonpath : " + this.path);
                }
                next();
                skipWhitespace();
                if (this.ch == '?') {
                    return new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) parseArrayAccessFilter(false));
                }
            }
            return null;
        }

        public java.lang.String readString() {
            char c5 = this.ch;
            next();
            int i5 = this.pos - 1;
            while (this.ch != c5 && !isEOF()) {
                next();
            }
            java.lang.String strSubstring = this.path.substring(i5, isEOF() ? this.pos : this.pos - 1);
            accept(c5);
            return strSubstring;
        }

        public java.lang.Object readValue() {
            skipWhitespace();
            if (isDigitFirst(this.ch)) {
                return java.lang.Long.valueOf(readLongValue());
            }
            char c5 = this.ch;
            if (c5 == '\"' || c5 == '\'') {
                return readString();
            }
            if (c5 != 'n') {
                throw new java.lang.UnsupportedOperationException();
            }
            if ("null".equals(readName())) {
                return null;
            }
            throw new com.alibaba.fastjson.JSONPathException(this.path);
        }

        public final void skipWhitespace() {
            while (true) {
                char c5 = this.ch;
                if (c5 > ' ') {
                    return;
                }
                if (c5 != ' ' && c5 != '\r' && c5 != '\n' && c5 != '\t' && c5 != '\f' && c5 != '\b') {
                    return;
                } else {
                    next();
                }
            }
        }
    }

    public static class KeySetSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.KeySetSegment instance = new com.alibaba.fastjson.JSONPath.KeySetSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.evalKeySet(obj2);
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MatchSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final java.lang.String[] containsValues;
        private final java.lang.String endsWithValue;
        private final int minLength;
        private final boolean not;
        private final java.lang.String startsWithValue;

        public MatchSegement(java.lang.String str, boolean z4, java.lang.String str2, java.lang.String str3, java.lang.String[] strArr, boolean z5) {
            super(str, z4);
            this.startsWithValue = str2;
            this.endsWithValue = str3;
            this.containsValues = strArr;
            this.not = z5;
            int length = str2 != null ? str2.length() + 0 : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (java.lang.String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.minLength = length;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            int length;
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            java.lang.String string = obj4.toString();
            if (string.length() < this.minLength) {
                return this.not;
            }
            java.lang.String str = this.startsWithValue;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.not;
                }
                length = this.startsWithValue.length() + 0;
            }
            java.lang.String[] strArr = this.containsValues;
            if (strArr != null) {
                for (java.lang.String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.not;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            java.lang.String str3 = this.endsWithValue;
            return (str3 == null || string.endsWith(str3)) ? !this.not : this.not;
        }
    }

    public static class MaxSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.MaxSegment instance = new com.alibaba.fastjson.JSONPath.MaxSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof java.util.Collection)) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.Object obj3 = null;
            for (java.lang.Object obj4 : (java.util.Collection) obj2) {
                if (obj4 != null && (obj3 == null || com.alibaba.fastjson.JSONPath.compare(obj3, obj4) < 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MinSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.MinSegment instance = new com.alibaba.fastjson.JSONPath.MinSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof java.util.Collection)) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.Object obj3 = null;
            for (java.lang.Object obj4 : (java.util.Collection) obj2) {
                if (obj4 != null && (obj3 == null || com.alibaba.fastjson.JSONPath.compare(obj3, obj4) > 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MultiIndexSegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final int[] indexes;

        public MultiIndexSegment(int[] iArr) {
            this.indexes = iArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(this.indexes.length);
            int i5 = 0;
            while (true) {
                int[] iArr = this.indexes;
                if (i5 >= iArr.length) {
                    return jSONArray;
                }
                jSONArray.add(jSONPath.getArrayItem(obj2, iArr[i5]));
                i5++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (context.eval) {
                java.lang.Object obj = defaultJSONParser.parse();
                if (obj instanceof java.util.List) {
                    int[] iArr = this.indexes;
                    int length = iArr.length;
                    int[] iArr2 = new int[length];
                    java.lang.System.arraycopy(iArr, 0, iArr2, 0, length);
                    java.util.List list = (java.util.List) obj;
                    if (iArr2[0] >= 0) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            if (java.util.Arrays.binarySearch(iArr2, size) < 0) {
                                list.remove(size);
                            }
                        }
                        context.object = list;
                        return;
                    }
                }
            }
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MultiPropertySegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final java.lang.String[] propertyNames;
        private final long[] propertyNamesHash;

        public MultiPropertySegment(java.lang.String[] strArr) {
            this.propertyNames = strArr;
            this.propertyNamesHash = new long[strArr.length];
            int i5 = 0;
            while (true) {
                long[] jArr = this.propertyNamesHash;
                if (i5 >= jArr.length) {
                    return;
                }
                jArr[i5] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strArr[i5]);
                i5++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.propertyNames.length);
            int i5 = 0;
            while (true) {
                java.lang.String[] strArr = this.propertyNames;
                if (i5 >= strArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.getPropertyValue(obj2, strArr[i5], this.propertyNamesHash[i5]));
                i5++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            com.alibaba.fastjson.JSONArray jSONArray;
            java.lang.Object objIntegerValue;
            com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer;
            java.lang.Object obj = context.object;
            if (obj == null) {
                jSONArray = new com.alibaba.fastjson.JSONArray();
                context.object = jSONArray;
            } else {
                jSONArray = (com.alibaba.fastjson.JSONArray) obj;
            }
            for (int size = jSONArray.size(); size < this.propertyNamesHash.length; size++) {
                jSONArray.add(null);
            }
            do {
                int iSeekObjectToField = jSONLexerBase.seekObjectToField(this.propertyNamesHash);
                if (jSONLexerBase.matchStat != 3) {
                    return;
                }
                int i5 = jSONLexerBase.token();
                if (i5 == 2) {
                    objIntegerValue = jSONLexerBase.integerValue();
                    jSONLexerBase.nextToken(16);
                } else if (i5 == 3) {
                    objIntegerValue = jSONLexerBase.decimalValue();
                    jSONLexerBase.nextToken(16);
                } else if (i5 != 4) {
                    objIntegerValue = defaultJSONParser.parse();
                } else {
                    objIntegerValue = jSONLexerBase.stringVal();
                    jSONLexerBase.nextToken(16);
                }
                jSONArray.set(iSeekObjectToField, objIntegerValue);
            } while (jSONLexerBase.token() == 16);
        }
    }

    public static class NotNullSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public NotNullSegement(java.lang.String str, boolean z4) {
            super(str, z4);
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash) != null;
        }
    }

    public static class NullSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public NullSegement(java.lang.String str, boolean z4) {
            super(str, z4);
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            return get(jSONPath, obj, obj3) == null;
        }
    }

    public enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN,
        And,
        Or,
        REG_MATCH
    }

    public static abstract class PropertyFilter implements com.alibaba.fastjson.JSONPath.Filter {
        public static long TYPE = com.alibaba.fastjson.util.TypeUtils.fnv1a_64("type");
        public final boolean function;
        public com.alibaba.fastjson.JSONPath.Segment functionExpr;
        public final java.lang.String propertyName;
        public final long propertyNameHash;

        public PropertyFilter(java.lang.String str, boolean z4) {
            this.propertyName = str;
            long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
            this.propertyNameHash = jFnv1a_64;
            this.function = z4;
            if (z4) {
                if (jFnv1a_64 == TYPE) {
                    this.functionExpr = com.alibaba.fastjson.JSONPath.TypeSegment.instance;
                } else {
                    if (jFnv1a_64 == com.alibaba.fastjson.JSONPath.SIZE) {
                        this.functionExpr = com.alibaba.fastjson.JSONPath.SizeSegment.instance;
                        return;
                    }
                    throw new com.alibaba.fastjson.JSONPathException("unsupported funciton : " + str);
                }
            }
        }

        public java.lang.Object get(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            com.alibaba.fastjson.JSONPath.Segment segment = this.functionExpr;
            return segment != null ? segment.eval(jSONPath, obj, obj2) : jSONPath.getPropertyValue(obj2, this.propertyName, this.propertyNameHash);
        }
    }

    public static class PropertySegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final boolean deep;
        private final java.lang.String propertyName;
        private final long propertyNameHash;

        public PropertySegment(java.lang.String str, boolean z4) {
            this.propertyName = str;
            this.propertyNameHash = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
            this.deep = z4;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValue(obj2, this.propertyName, this.propertyNameHash);
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            jSONPath.deepScan(obj2, this.propertyName, arrayList);
            return arrayList;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            java.lang.Object objIntegerValue;
            java.lang.Object objIntegerValue2;
            java.lang.Object objIntegerValue3;
            com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer;
            if (this.deep && context.object == null) {
                context.object = new com.alibaba.fastjson.JSONArray();
            }
            if (jSONLexerBase.token() != 14) {
                boolean z4 = this.deep;
                if (!z4) {
                    if (jSONLexerBase.seekObjectToField(this.propertyNameHash, z4) == 3 && context.eval) {
                        int i5 = jSONLexerBase.token();
                        if (i5 == 2) {
                            objIntegerValue2 = jSONLexerBase.integerValue();
                            jSONLexerBase.nextToken(16);
                        } else if (i5 == 3) {
                            objIntegerValue2 = jSONLexerBase.decimalValue();
                            jSONLexerBase.nextToken(16);
                        } else if (i5 != 4) {
                            objIntegerValue2 = defaultJSONParser.parse();
                        } else {
                            objIntegerValue2 = jSONLexerBase.stringVal();
                            jSONLexerBase.nextToken(16);
                        }
                        if (context.eval) {
                            context.object = objIntegerValue2;
                            return;
                        }
                        return;
                    }
                    return;
                }
                while (true) {
                    int iSeekObjectToField = jSONLexerBase.seekObjectToField(this.propertyNameHash, this.deep);
                    if (iSeekObjectToField == -1) {
                        return;
                    }
                    if (iSeekObjectToField == 3) {
                        if (context.eval) {
                            int i6 = jSONLexerBase.token();
                            if (i6 == 2) {
                                objIntegerValue = jSONLexerBase.integerValue();
                                jSONLexerBase.nextToken(16);
                            } else if (i6 == 3) {
                                objIntegerValue = jSONLexerBase.decimalValue();
                                jSONLexerBase.nextToken(16);
                            } else if (i6 != 4) {
                                objIntegerValue = defaultJSONParser.parse();
                            } else {
                                objIntegerValue = jSONLexerBase.stringVal();
                                jSONLexerBase.nextToken(16);
                            }
                            if (context.eval) {
                                java.lang.Object obj = context.object;
                                if (obj instanceof java.util.List) {
                                    java.util.List list = (java.util.List) obj;
                                    if (list.size() == 0 && (objIntegerValue instanceof java.util.List)) {
                                        context.object = objIntegerValue;
                                    } else {
                                        list.add(objIntegerValue);
                                    }
                                } else {
                                    context.object = objIntegerValue;
                                }
                            }
                        }
                    } else if (iSeekObjectToField == 1 || iSeekObjectToField == 2) {
                        extract(jSONPath, defaultJSONParser, context);
                    }
                }
            } else {
                if ("*".equals(this.propertyName)) {
                    return;
                }
                jSONLexerBase.nextToken();
                com.alibaba.fastjson.JSONArray jSONArray = this.deep ? (com.alibaba.fastjson.JSONArray) context.object : new com.alibaba.fastjson.JSONArray();
                while (true) {
                    int i7 = jSONLexerBase.token();
                    if (i7 == 12) {
                        boolean z5 = this.deep;
                        if (z5) {
                            extract(jSONPath, defaultJSONParser, context);
                        } else {
                            int iSeekObjectToField2 = jSONLexerBase.seekObjectToField(this.propertyNameHash, z5);
                            if (iSeekObjectToField2 == 3) {
                                int i8 = jSONLexerBase.token();
                                if (i8 == 2) {
                                    objIntegerValue3 = jSONLexerBase.integerValue();
                                    jSONLexerBase.nextToken();
                                } else if (i8 != 4) {
                                    objIntegerValue3 = defaultJSONParser.parse();
                                } else {
                                    objIntegerValue3 = jSONLexerBase.stringVal();
                                    jSONLexerBase.nextToken();
                                }
                                jSONArray.add(objIntegerValue3);
                                if (jSONLexerBase.token() == 13) {
                                    jSONLexerBase.nextToken();
                                } else {
                                    jSONLexerBase.skipObject(false);
                                }
                            } else if (iSeekObjectToField2 == -1) {
                                continue;
                            } else {
                                if (this.deep) {
                                    throw new java.lang.UnsupportedOperationException(jSONLexerBase.info());
                                }
                                jSONLexerBase.skipObject(false);
                            }
                        }
                    } else if (i7 != 14) {
                        switch (i7) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                jSONLexerBase.nextToken();
                                break;
                        }
                    } else if (this.deep) {
                        extract(jSONPath, defaultJSONParser, context);
                    } else {
                        jSONLexerBase.skipObject(false);
                    }
                    if (jSONLexerBase.token() == 15) {
                        jSONLexerBase.nextToken();
                        if (this.deep || jSONArray.size() <= 0) {
                            return;
                        }
                        context.object = jSONArray;
                        return;
                    }
                    if (jSONLexerBase.token() != 16) {
                        throw new com.alibaba.fastjson.JSONException("illegal json : " + jSONLexerBase.info());
                    }
                    jSONLexerBase.nextToken();
                }
            }
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj) {
            return jSONPath.removePropertyValue(obj, this.propertyName, this.deep);
        }

        public void setValue(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (this.deep) {
                jSONPath.deepSet(obj, this.propertyName, this.propertyNameHash, obj2);
            } else {
                jSONPath.setPropertyValue(obj, this.propertyName, this.propertyNameHash, obj2);
            }
        }
    }

    public static class RangeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        private final int end;
        private final int start;
        private final int step;

        public RangeSegment(int i5, int i6, int i7) {
            this.start = i5;
            this.end = i6;
            this.step = i7;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            int iIntValue = com.alibaba.fastjson.JSONPath.SizeSegment.instance.eval(jSONPath, obj, obj2).intValue();
            int i5 = this.start;
            if (i5 < 0) {
                i5 += iIntValue;
            }
            int i6 = this.end;
            if (i6 < 0) {
                i6 += iIntValue;
            }
            int i7 = ((i6 - i5) / this.step) + 1;
            if (i7 == -1) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(i7);
            while (i5 <= i6 && i5 < iIntValue) {
                arrayList.add(jSONPath.getArrayItem(obj2, i5));
                i5 += this.step;
            }
            return arrayList;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class RefOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final com.alibaba.fastjson.JSONPath.Operator op;
        private final com.alibaba.fastjson.JSONPath.Segment refSgement;

        public RefOpSegement(java.lang.String str, boolean z4, com.alibaba.fastjson.JSONPath.Segment segment, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z4);
            this.refSgement = segment;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            java.lang.Object objEval = this.refSgement.eval(jSONPath, obj, obj);
            if ((objEval instanceof java.lang.Integer) || (objEval instanceof java.lang.Long) || (objEval instanceof java.lang.Short) || (objEval instanceof java.lang.Byte)) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) objEval);
                if ((obj4 instanceof java.lang.Integer) || (obj4 instanceof java.lang.Long) || (obj4 instanceof java.lang.Short) || (obj4 instanceof java.lang.Byte)) {
                    long jLongExtractValue2 = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                    switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                        case 1:
                            return jLongExtractValue2 == jLongExtractValue;
                        case 2:
                            return jLongExtractValue2 != jLongExtractValue;
                        case 3:
                            return jLongExtractValue2 >= jLongExtractValue;
                        case 4:
                            return jLongExtractValue2 > jLongExtractValue;
                        case 5:
                            return jLongExtractValue2 <= jLongExtractValue;
                        case 6:
                            return jLongExtractValue2 < jLongExtractValue;
                    }
                }
                if (obj4 instanceof java.math.BigDecimal) {
                    int iCompareTo = java.math.BigDecimal.valueOf(jLongExtractValue).compareTo((java.math.BigDecimal) obj4);
                    switch (com.alibaba.fastjson.JSONPath.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPath$Operator[this.op.ordinal()]) {
                        case 1:
                            return iCompareTo == 0;
                        case 2:
                            return iCompareTo != 0;
                        case 3:
                            return iCompareTo <= 0;
                        case 4:
                            return iCompareTo < 0;
                        case 5:
                            return iCompareTo >= 0;
                        case 6:
                            return iCompareTo > 0;
                        default:
                            return false;
                    }
                }
            }
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class RegMatchSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final com.alibaba.fastjson.JSONPath.Operator op;
        private final java.util.regex.Pattern pattern;

        public RegMatchSegement(java.lang.String str, boolean z4, java.util.regex.Pattern pattern, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z4);
            this.pattern = pattern;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            return this.pattern.matcher(obj4.toString()).matches();
        }
    }

    public static class RlikeSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final boolean not;
        private final java.util.regex.Pattern pattern;

        public RlikeSegement(java.lang.String str, boolean z4, java.lang.String str2, boolean z5) {
            super(str, z4);
            this.pattern = java.util.regex.Pattern.compile(str2);
            this.not = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            boolean zMatches = this.pattern.matcher(obj4.toString()).matches();
            return this.not ? !zMatches : zMatches;
        }
    }

    public interface Segment {
        java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2);

        void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context);
    }

    public static class SizeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.SizeSegment instance = new com.alibaba.fastjson.JSONPath.SizeSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            context.object = java.lang.Integer.valueOf(jSONPath.evalSize(defaultJSONParser.parse()));
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Integer eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return java.lang.Integer.valueOf(jSONPath.evalSize(obj2));
        }
    }

    public static class StringInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final boolean not;
        private final java.lang.String[] values;

        public StringInSegement(java.lang.String str, boolean z4, java.lang.String[] strArr, boolean z5) {
            super(str, z4);
            this.values = strArr;
            this.not = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            for (java.lang.String str : this.values) {
                if (str == obj4) {
                    return !this.not;
                }
                if (str != null && str.equals(obj4)) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    public static class StringOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private final com.alibaba.fastjson.JSONPath.Operator op;
        private final java.lang.String value;

        public StringOpSegement(java.lang.String str, boolean z4, java.lang.String str2, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z4);
            this.value = str2;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            com.alibaba.fastjson.JSONPath.Operator operator = this.op;
            if (operator == com.alibaba.fastjson.JSONPath.Operator.EQ) {
                return this.value.equals(obj4);
            }
            if (operator == com.alibaba.fastjson.JSONPath.Operator.NE) {
                return !this.value.equals(obj4);
            }
            if (obj4 == null) {
                return false;
            }
            int iCompareTo = this.value.compareTo(obj4.toString());
            com.alibaba.fastjson.JSONPath.Operator operator2 = this.op;
            if (operator2 == com.alibaba.fastjson.JSONPath.Operator.GE) {
                return iCompareTo <= 0;
            }
            if (operator2 == com.alibaba.fastjson.JSONPath.Operator.GT) {
                return iCompareTo < 0;
            }
            if (operator2 == com.alibaba.fastjson.JSONPath.Operator.LE) {
                return iCompareTo >= 0;
            }
            return operator2 == com.alibaba.fastjson.JSONPath.Operator.LT && iCompareTo > 0;
        }
    }

    public static class TypeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.TypeSegment instance = new com.alibaba.fastjson.JSONPath.TypeSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.String eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (obj2 == null) {
                return "null";
            }
            if (obj2 instanceof java.util.Collection) {
                return "array";
            }
            if (obj2 instanceof java.lang.Number) {
                return "number";
            }
            if (obj2 instanceof java.lang.Boolean) {
                return "boolean";
            }
            return ((obj2 instanceof java.lang.String) || (obj2 instanceof java.util.UUID) || (obj2 instanceof java.lang.Enum)) ? "string" : "object";
        }
    }

    public static class ValueSegment extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        private boolean eq;
        private final java.lang.Object value;

        public ValueSegment(java.lang.String str, boolean z4, java.lang.Object obj, boolean z5) {
            super(str, z4);
            this.eq = true;
            if (obj == null) {
                throw new java.lang.IllegalArgumentException("value is null");
            }
            this.value = obj;
            this.eq = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            boolean zEquals = this.value.equals(get(jSONPath, obj, obj3));
            return !this.eq ? !zEquals : zEquals;
        }
    }

    public static class WildCardSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance = new com.alibaba.fastjson.JSONPath.WildCardSegment(false, false);
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance_deep = new com.alibaba.fastjson.JSONPath.WildCardSegment(true, false);
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance_deep_objectOnly = new com.alibaba.fastjson.JSONPath.WildCardSegment(true, true);
        private boolean deep;
        private boolean objectOnly;

        private WildCardSegment(boolean z4, boolean z5) {
            this.deep = z4;
            this.objectOnly = z5;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValues(obj2);
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            jSONPath.deepGetPropertyValues(obj2, arrayList);
            return arrayList;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (context.eval) {
                java.lang.Object obj = defaultJSONParser.parse();
                if (this.deep) {
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    if (this.objectOnly) {
                        jSONPath.deepGetObjects(obj, arrayList);
                    } else {
                        jSONPath.deepGetPropertyValues(obj, arrayList);
                    }
                    context.object = arrayList;
                    return;
                }
                if (obj instanceof com.alibaba.fastjson.JSONObject) {
                    java.util.Collection<?> collectionValues = ((com.alibaba.fastjson.JSONObject) obj).values();
                    com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(collectionValues.size());
                    jSONArray.addAll(collectionValues);
                    context.object = jSONArray;
                    return;
                }
                if (obj instanceof com.alibaba.fastjson.JSONArray) {
                    context.object = obj;
                    return;
                }
            }
            throw new com.alibaba.fastjson.JSONException("TODO");
        }
    }

    public JSONPath(java.lang.String str) {
        this(str, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), true);
    }

    public static int compare(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object d5;
        java.lang.Object f5;
        if (obj.getClass() == obj2.getClass()) {
            return ((java.lang.Comparable) obj).compareTo(obj2);
        }
        java.lang.Class<?> cls = obj.getClass();
        java.lang.Class<?> cls2 = obj2.getClass();
        if (cls == java.math.BigDecimal.class) {
            if (cls2 == java.lang.Integer.class) {
                f5 = new java.math.BigDecimal(((java.lang.Integer) obj2).intValue());
            } else if (cls2 == java.lang.Long.class) {
                f5 = new java.math.BigDecimal(((java.lang.Long) obj2).longValue());
            } else if (cls2 == java.lang.Float.class) {
                f5 = new java.math.BigDecimal(((java.lang.Float) obj2).floatValue());
            } else if (cls2 == java.lang.Double.class) {
                f5 = new java.math.BigDecimal(((java.lang.Double) obj2).doubleValue());
            }
            obj2 = f5;
        } else if (cls == java.lang.Long.class) {
            if (cls2 == java.lang.Integer.class) {
                f5 = new java.lang.Long(((java.lang.Integer) obj2).intValue());
                obj2 = f5;
            } else {
                if (cls2 == java.math.BigDecimal.class) {
                    d5 = new java.math.BigDecimal(((java.lang.Long) obj).longValue());
                } else if (cls2 == java.lang.Float.class) {
                    d5 = new java.lang.Float(((java.lang.Long) obj).longValue());
                } else if (cls2 == java.lang.Double.class) {
                    d5 = new java.lang.Double(((java.lang.Long) obj).longValue());
                }
                obj = d5;
            }
        } else if (cls == java.lang.Integer.class) {
            if (cls2 == java.lang.Long.class) {
                d5 = new java.lang.Long(((java.lang.Integer) obj).intValue());
            } else if (cls2 == java.math.BigDecimal.class) {
                d5 = new java.math.BigDecimal(((java.lang.Integer) obj).intValue());
            } else if (cls2 == java.lang.Float.class) {
                d5 = new java.lang.Float(((java.lang.Integer) obj).intValue());
            } else if (cls2 == java.lang.Double.class) {
                d5 = new java.lang.Double(((java.lang.Integer) obj).intValue());
            }
            obj = d5;
        } else if (cls == java.lang.Double.class) {
            if (cls2 == java.lang.Integer.class) {
                f5 = new java.lang.Double(((java.lang.Integer) obj2).intValue());
            } else if (cls2 == java.lang.Long.class) {
                f5 = new java.lang.Double(((java.lang.Long) obj2).longValue());
            } else if (cls2 == java.lang.Float.class) {
                f5 = new java.lang.Double(((java.lang.Float) obj2).floatValue());
            }
            obj2 = f5;
        } else if (cls == java.lang.Float.class) {
            if (cls2 == java.lang.Integer.class) {
                f5 = new java.lang.Float(((java.lang.Integer) obj2).intValue());
            } else if (cls2 == java.lang.Long.class) {
                f5 = new java.lang.Float(((java.lang.Long) obj2).longValue());
            } else if (cls2 == java.lang.Double.class) {
                d5 = new java.lang.Double(((java.lang.Float) obj).floatValue());
                obj = d5;
            }
            obj2 = f5;
        }
        return ((java.lang.Comparable) obj).compareTo(obj2);
    }

    public static com.alibaba.fastjson.JSONPath compile(java.lang.String str) {
        if (str == null) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath can not be null");
        }
        com.alibaba.fastjson.JSONPath jSONPath = pathCache.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        com.alibaba.fastjson.JSONPath jSONPath2 = new com.alibaba.fastjson.JSONPath(str);
        if (pathCache.size() >= 1024) {
            return jSONPath2;
        }
        pathCache.putIfAbsent(str, jSONPath2);
        return pathCache.get(str);
    }

    public static boolean eq(java.lang.Object obj, java.lang.Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj.getClass() == obj2.getClass()) {
            return obj.equals(obj2);
        }
        if (!(obj instanceof java.lang.Number)) {
            return obj.equals(obj2);
        }
        if (obj2 instanceof java.lang.Number) {
            return eqNotNull((java.lang.Number) obj, (java.lang.Number) obj2);
        }
        return false;
    }

    public static boolean eqNotNull(java.lang.Number number, java.lang.Number number2) {
        java.lang.Class<?> cls = number.getClass();
        boolean zIsInt = isInt(cls);
        java.lang.Class<?> cls2 = number2.getClass();
        boolean zIsInt2 = isInt(cls2);
        if (number instanceof java.math.BigDecimal) {
            java.math.BigDecimal bigDecimal = (java.math.BigDecimal) number;
            if (zIsInt2) {
                return bigDecimal.equals(java.math.BigDecimal.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number2)));
            }
        }
        if (zIsInt) {
            if (zIsInt2) {
                return number.longValue() == number2.longValue();
            }
            if (number2 instanceof java.math.BigInteger) {
                return java.math.BigInteger.valueOf(number.longValue()).equals((java.math.BigInteger) number);
            }
        }
        if (zIsInt2 && (number instanceof java.math.BigInteger)) {
            return ((java.math.BigInteger) number).equals(java.math.BigInteger.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number2)));
        }
        boolean zIsDouble = isDouble(cls);
        boolean zIsDouble2 = isDouble(cls2);
        return ((zIsDouble && zIsDouble2) || ((zIsDouble && zIsInt2) || (zIsDouble2 && zIsInt))) && number.doubleValue() == number2.doubleValue();
    }

    public static boolean isDouble(java.lang.Class<?> cls) {
        return cls == java.lang.Float.class || cls == java.lang.Double.class;
    }

    public static boolean isInt(java.lang.Class<?> cls) {
        return cls == java.lang.Byte.class || cls == java.lang.Short.class || cls == java.lang.Integer.class || cls == java.lang.Long.class;
    }

    public static java.util.Map<java.lang.String, java.lang.Object> paths(java.lang.Object obj) {
        return paths(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static java.lang.Object read(java.lang.String str, java.lang.String str2) {
        return compile(str2).eval(com.alibaba.fastjson.JSON.parse(str));
    }

    public static java.lang.Object reserveToArray(java.lang.Object obj, java.lang.String... strArr) {
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        if (strArr != null && strArr.length != 0) {
            for (java.lang.String str : strArr) {
                com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
                jSONPathCompile.init();
                jSONArray.add(jSONPathCompile.eval(obj));
            }
        }
        return jSONArray;
    }

    public static java.lang.Object reserveToObject(java.lang.Object obj, java.lang.String... strArr) {
        java.lang.Object objEval;
        if (strArr == null || strArr.length == 0) {
            return obj;
        }
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
        for (java.lang.String str : strArr) {
            com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
            jSONPathCompile.init();
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = jSONPathCompile.segments;
            if ((segmentArr[segmentArr.length - 1] instanceof com.alibaba.fastjson.JSONPath.PropertySegment) && (objEval = jSONPathCompile.eval(obj)) != null) {
                jSONPathCompile.set(jSONObject, objEval);
            }
        }
        return jSONObject;
    }

    public void arrayAdd(java.lang.Object obj, java.lang.Object... objArr) {
        if (objArr == null || objArr.length == 0 || obj == null) {
            return;
        }
        init();
        java.lang.Object obj2 = null;
        int i5 = 0;
        java.lang.Object objEval = obj;
        int i6 = 0;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i6 >= segmentArr.length) {
                break;
            }
            if (i6 == segmentArr.length - 1) {
                obj2 = objEval;
            }
            objEval = segmentArr[i6].eval(this, obj, objEval);
            i6++;
        }
        if (objEval == null) {
            throw new com.alibaba.fastjson.JSONPathException("value not found in path " + this.path);
        }
        if (objEval instanceof java.util.Collection) {
            java.util.Collection collection = (java.util.Collection) objEval;
            int length = objArr.length;
            while (i5 < length) {
                collection.add(objArr[i5]);
                i5++;
            }
            return;
        }
        java.lang.Class<?> cls = objEval.getClass();
        if (!cls.isArray()) {
            throw new com.alibaba.fastjson.JSONException("unsupported array put operation. " + cls);
        }
        int length2 = java.lang.reflect.Array.getLength(objEval);
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls.getComponentType(), objArr.length + length2);
        java.lang.System.arraycopy(objEval, 0, objNewInstance, 0, length2);
        while (i5 < objArr.length) {
            java.lang.reflect.Array.set(objNewInstance, length2 + i5, objArr[i5]);
            i5++;
        }
        com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = this.segments;
        com.alibaba.fastjson.JSONPath.Segment segment = segmentArr2[segmentArr2.length - 1];
        if (segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
            ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).setValue(this, obj2, objNewInstance);
        } else {
            if (!(segment instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment)) {
                throw new java.lang.UnsupportedOperationException();
            }
            ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment).setValue(this, obj2, objNewInstance);
        }
    }

    public boolean contains(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        init();
        java.lang.Object obj2 = obj;
        int i5 = 0;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                return true;
            }
            java.lang.Object objEval = segmentArr[i5].eval(this, obj, obj2);
            if (objEval == null) {
                return false;
            }
            if (objEval == java.util.Collections.EMPTY_LIST && (obj2 instanceof java.util.List)) {
                return ((java.util.List) obj2).contains(objEval);
            }
            i5++;
            obj2 = objEval;
        }
    }

    public boolean containsValue(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object objEval = eval(obj);
        if (objEval == obj2) {
            return true;
        }
        if (objEval == null) {
            return false;
        }
        if (!(objEval instanceof java.lang.Iterable)) {
            return eq(objEval, obj2);
        }
        java.util.Iterator it = ((java.lang.Iterable) objEval).iterator();
        while (it.hasNext()) {
            if (eq(it.next(), obj2)) {
                return true;
            }
        }
        return false;
    }

    public void deepGetObjects(java.lang.Object obj, java.util.List<java.lang.Object> list) {
        java.util.Collection fieldValues;
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(cls);
        if (javaBeanSerializer != null) {
            try {
                fieldValues = javaBeanSerializer.getFieldValues(obj);
                list.add(obj);
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path, e5);
            }
        } else if (obj instanceof java.util.Map) {
            list.add(obj);
            fieldValues = ((java.util.Map) obj).values();
        } else {
            fieldValues = obj instanceof java.util.Collection ? (java.util.Collection) obj : null;
        }
        if (fieldValues == null) {
            throw new java.lang.UnsupportedOperationException(cls.getName());
        }
        for (java.lang.Object obj2 : fieldValues) {
            if (obj2 != null && !com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                deepGetObjects(obj2, list);
            }
        }
    }

    public void deepGetPropertyValues(java.lang.Object obj, java.util.List<java.lang.Object> list) {
        java.util.Collection fieldValues;
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(cls);
        if (javaBeanSerializer != null) {
            try {
                fieldValues = javaBeanSerializer.getFieldValues(obj);
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path, e5);
            }
        } else if (obj instanceof java.util.Map) {
            fieldValues = ((java.util.Map) obj).values();
        } else {
            fieldValues = obj instanceof java.util.Collection ? (java.util.Collection) obj : null;
        }
        if (fieldValues == null) {
            throw new java.lang.UnsupportedOperationException(cls.getName());
        }
        for (java.lang.Object obj2 : fieldValues) {
            if (obj2 == null || com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                list.add(obj2);
            } else {
                deepGetPropertyValues(obj2, list);
            }
        }
    }

    public void deepScan(java.lang.Object obj, java.lang.String str, java.util.List<java.lang.Object> list) {
        if (obj == null) {
            return;
        }
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                java.lang.Object value = entry.getValue();
                if (str.equals(entry.getKey())) {
                    if (value instanceof java.util.Collection) {
                        list.addAll((java.util.Collection) value);
                    } else {
                        list.add(value);
                    }
                } else if (value != null && !com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(value.getClass())) {
                    deepScan(value, str, list);
                }
            }
            return;
        }
        if (obj instanceof java.util.Collection) {
            for (java.lang.Object obj2 : (java.util.Collection) obj) {
                if (!com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                    deepScan(obj2, str, list);
                }
            }
            return;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            if (obj instanceof java.util.List) {
                java.util.List list2 = (java.util.List) obj;
                for (int i5 = 0; i5 < list2.size(); i5++) {
                    deepScan(list2.get(i5), str, list);
                }
                return;
            }
            return;
        }
        try {
            com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer = javaBeanSerializer.getFieldSerializer(str);
            if (fieldSerializer == null) {
                java.util.Iterator<java.lang.Object> it = javaBeanSerializer.getFieldValues(obj).iterator();
                while (it.hasNext()) {
                    deepScan(it.next(), str, list);
                }
                return;
            }
            try {
                list.add(fieldSerializer.getPropertyValueDirect(obj));
            } catch (java.lang.IllegalAccessException e5) {
                throw new com.alibaba.fastjson.JSONException("getFieldValue error." + str, e5);
            } catch (java.lang.reflect.InvocationTargetException e6) {
                throw new com.alibaba.fastjson.JSONException("getFieldValue error." + str, e6);
            }
        } catch (java.lang.Exception e7) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e7);
        }
    }

    public void deepSet(java.lang.Object obj, java.lang.String str, long j5, java.lang.Object obj2) {
        if (obj == null) {
            return;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.containsKey(str)) {
                map.get(str);
                map.put(str, obj2);
                return;
            } else {
                java.util.Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    deepSet(it.next(), str, j5, obj2);
                }
                return;
            }
        }
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = getJavaBeanDeserializer(cls);
        if (javaBeanDeserializer == null) {
            if (obj instanceof java.util.List) {
                java.util.List list = (java.util.List) obj;
                for (int i5 = 0; i5 < list.size(); i5++) {
                    deepSet(list.get(i5), str, j5, obj2);
                }
                return;
            }
            return;
        }
        try {
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
            if (fieldDeserializer != null) {
                fieldDeserializer.setValue(obj, obj2);
                return;
            }
            java.util.Iterator<java.lang.Object> it2 = getJavaBeanSerializer(cls).getObjectFieldValues(obj).iterator();
            while (it2.hasNext()) {
                deepSet(it2.next(), str, j5, obj2);
            }
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e5);
        }
    }

    public java.lang.Object eval(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i5 = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                return objEval;
            }
            objEval = segmentArr[i5].eval(this, obj, objEval);
            i5++;
        }
    }

    public java.util.Set<?> evalKeySet(java.lang.Object obj) {
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer;
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.Map) {
            return ((java.util.Map) obj).keySet();
        }
        if ((obj instanceof java.util.Collection) || (obj instanceof java.lang.Object[]) || obj.getClass().isArray() || (javaBeanSerializer = getJavaBeanSerializer(obj.getClass())) == null) {
            return null;
        }
        try {
            return javaBeanSerializer.getFieldNames(obj);
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONPathException("evalKeySet error : " + this.path, e5);
        }
    }

    public int evalSize(java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof java.util.Collection) {
            return ((java.util.Collection) obj).size();
        }
        if (obj instanceof java.lang.Object[]) {
            return ((java.lang.Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return java.lang.reflect.Array.getLength(obj);
        }
        if (obj instanceof java.util.Map) {
            int i5 = 0;
            java.util.Iterator it = ((java.util.Map) obj).values().iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    i5++;
                }
            }
            return i5;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            return -1;
        }
        try {
            return javaBeanSerializer.getSize(obj);
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONPathException("evalSize error : " + this.path, e5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x009a  */
    public java.lang.Object extract(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        boolean z4;
        java.lang.Object obj;
        if (defaultJSONParser == null) {
            return null;
        }
        init();
        if (this.hasRefSegment) {
            return eval(defaultJSONParser.parse());
        }
        com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
        if (segmentArr.length == 0) {
            return defaultJSONParser.parse();
        }
        com.alibaba.fastjson.JSONPath.Segment segment = segmentArr[segmentArr.length - 1];
        if ((segment instanceof com.alibaba.fastjson.JSONPath.TypeSegment) || (segment instanceof com.alibaba.fastjson.JSONPath.FloorSegment) || (segment instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment)) {
            return eval(defaultJSONParser.parse());
        }
        com.alibaba.fastjson.JSONPath.Context context = null;
        int i5 = 0;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = this.segments;
            if (i5 >= segmentArr2.length) {
                return context.object;
            }
            com.alibaba.fastjson.JSONPath.Segment segment2 = segmentArr2[i5];
            boolean z5 = i5 == segmentArr2.length - 1;
            if (context == null || (obj = context.object) == null) {
                if (z5) {
                    z4 = true;
                } else {
                    com.alibaba.fastjson.JSONPath.Segment segment3 = segmentArr2[i5 + 1];
                    if (((segment2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) && ((com.alibaba.fastjson.JSONPath.PropertySegment) segment2).deep && ((segment3 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.MultiPropertySegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.SizeSegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.FilterSegment))) || (((segment3 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment) && ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment3).index < 0) || (segment3 instanceof com.alibaba.fastjson.JSONPath.FilterSegment) || (segment2 instanceof com.alibaba.fastjson.JSONPath.WildCardSegment) || (segment2 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment))) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                com.alibaba.fastjson.JSONPath.Context context2 = new com.alibaba.fastjson.JSONPath.Context(context, z4);
                segment2.extract(this, defaultJSONParser, context2);
                context = context2;
            } else {
                context.object = segment2.eval(this, null, obj);
            }
            i5++;
        }
    }

    public java.lang.Object getArrayItem(java.lang.Object obj, int i5) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            if (i5 >= 0) {
                if (i5 < list.size()) {
                    return list.get(i5);
                }
                return null;
            }
            if (java.lang.Math.abs(i5) <= list.size()) {
                return list.get(list.size() + i5);
            }
            return null;
        }
        if (obj.getClass().isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            if (i5 >= 0) {
                if (i5 < length) {
                    return java.lang.reflect.Array.get(obj, i5);
                }
                return null;
            }
            if (java.lang.Math.abs(i5) <= length) {
                return java.lang.reflect.Array.get(obj, length + i5);
            }
            return null;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            java.lang.Object obj2 = map.get(java.lang.Integer.valueOf(i5));
            return obj2 == null ? map.get(java.lang.Integer.toString(i5)) : obj2;
        }
        if (!(obj instanceof java.util.Collection)) {
            if (i5 == 0) {
                return obj;
            }
            throw new java.lang.UnsupportedOperationException();
        }
        int i6 = 0;
        for (java.lang.Object obj3 : (java.util.Collection) obj) {
            if (i6 == i5) {
                return obj3;
            }
            i6++;
        }
        return null;
    }

    public com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer getJavaBeanDeserializer(java.lang.Class<?> cls) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(cls);
        if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
            return (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer;
        }
        return null;
    }

    public com.alibaba.fastjson.serializer.JavaBeanSerializer getJavaBeanSerializer(java.lang.Class<?> cls) {
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = this.serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            return (com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter;
        }
        return null;
    }

    public java.lang.String getPath() {
        return this.path;
    }

    public java.lang.Object getPropertyValue(java.lang.Object obj, java.lang.String str, long j5) {
        java.lang.Object obj2;
        com.alibaba.fastjson.JSONArray jSONArray = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.String) {
            try {
                obj2 = (com.alibaba.fastjson.JSONObject) com.alibaba.fastjson.JSON.parse((java.lang.String) obj, this.parserConfig);
            } catch (java.lang.Exception unused) {
                obj2 = obj;
            }
        } else {
            obj2 = obj;
        }
        if (obj2 instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj2;
            java.lang.Object obj3 = map.get(str);
            if (obj3 == null) {
                return (SIZE == j5 || LENGTH == j5) ? java.lang.Integer.valueOf(map.size()) : obj3;
            }
            return obj3;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj2.getClass());
        if (javaBeanSerializer != null) {
            try {
                return javaBeanSerializer.getFieldValue(obj2, str, j5, false);
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e5);
            }
        }
        int i5 = 0;
        if (obj2 instanceof java.util.List) {
            java.util.List list = (java.util.List) obj2;
            if (SIZE == j5 || LENGTH == j5) {
                return java.lang.Integer.valueOf(list.size());
            }
            while (i5 < list.size()) {
                java.lang.Object obj4 = list.get(i5);
                if (obj4 == list) {
                    if (jSONArray == null) {
                        jSONArray = new com.alibaba.fastjson.JSONArray(list.size());
                    }
                    jSONArray.add(obj4);
                } else {
                    java.lang.Object propertyValue = getPropertyValue(obj4, str, j5);
                    if (propertyValue instanceof java.util.Collection) {
                        java.util.Collection collection = (java.util.Collection) propertyValue;
                        if (jSONArray == null) {
                            jSONArray = new com.alibaba.fastjson.JSONArray(list.size());
                        }
                        jSONArray.addAll(collection);
                    } else if (propertyValue != null || !this.ignoreNullValue) {
                        if (jSONArray == null) {
                            jSONArray = new com.alibaba.fastjson.JSONArray(list.size());
                        }
                        jSONArray.add(propertyValue);
                    }
                }
                i5++;
            }
            return jSONArray == null ? java.util.Collections.emptyList() : jSONArray;
        }
        if (obj2 instanceof java.lang.Object[]) {
            java.lang.Object[] objArr = (java.lang.Object[]) obj2;
            if (SIZE == j5 || LENGTH == j5) {
                return java.lang.Integer.valueOf(objArr.length);
            }
            com.alibaba.fastjson.JSONArray jSONArray2 = new com.alibaba.fastjson.JSONArray(objArr.length);
            while (i5 < objArr.length) {
                java.lang.Object[] objArr2 = objArr[i5];
                if (objArr2 == objArr) {
                    jSONArray2.add(objArr2);
                } else {
                    java.lang.Object propertyValue2 = getPropertyValue(objArr2, str, j5);
                    if (propertyValue2 instanceof java.util.Collection) {
                        jSONArray2.addAll((java.util.Collection) propertyValue2);
                    } else if (propertyValue2 != null || !this.ignoreNullValue) {
                        jSONArray2.add(propertyValue2);
                    }
                }
                i5++;
            }
            return jSONArray2;
        }
        if (obj2 instanceof java.lang.Enum) {
            java.lang.Enum r9 = (java.lang.Enum) obj2;
            if (-4270347329889690746L == j5) {
                return r9.name();
            }
            if (-1014497654951707614L == j5) {
                return java.lang.Integer.valueOf(r9.ordinal());
            }
        }
        if (obj2 instanceof java.util.Calendar) {
            java.util.Calendar calendar = (java.util.Calendar) obj2;
            if (8963398325558730460L == j5) {
                return java.lang.Integer.valueOf(calendar.get(1));
            }
            if (-811277319855450459L == j5) {
                return java.lang.Integer.valueOf(calendar.get(2));
            }
            if (-3851359326990528739L == j5) {
                return java.lang.Integer.valueOf(calendar.get(5));
            }
            if (4647432019745535567L == j5) {
                return java.lang.Integer.valueOf(calendar.get(11));
            }
            if (6607618197526598121L == j5) {
                return java.lang.Integer.valueOf(calendar.get(12));
            }
            if (-6586085717218287427L == j5) {
                return java.lang.Integer.valueOf(calendar.get(13));
            }
        }
        return null;
    }

    public java.util.Collection<java.lang.Object> getPropertyValues(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            if (obj instanceof java.util.Map) {
                return ((java.util.Map) obj).values();
            }
            if (obj instanceof java.util.Collection) {
                return (java.util.Collection) obj;
            }
            throw new java.lang.UnsupportedOperationException();
        }
        try {
            return javaBeanSerializer.getFieldValues(obj);
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath error, path " + this.path, e5);
        }
    }

    public void init() {
        if (this.segments != null) {
            return;
        }
        if ("*".equals(this.path)) {
            this.segments = new com.alibaba.fastjson.JSONPath.Segment[]{com.alibaba.fastjson.JSONPath.WildCardSegment.instance};
            return;
        }
        com.alibaba.fastjson.JSONPath.JSONPathParser jSONPathParser = new com.alibaba.fastjson.JSONPath.JSONPathParser(this.path);
        this.segments = jSONPathParser.explain();
        this.hasRefSegment = jSONPathParser.hasRefSegment;
    }

    public boolean isRef() {
        try {
            init();
            int i5 = 0;
            while (true) {
                com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
                if (i5 >= segmentArr.length) {
                    return true;
                }
                java.lang.Class<?> cls = segmentArr[i5].getClass();
                if (cls != com.alibaba.fastjson.JSONPath.ArrayAccessSegment.class && cls != com.alibaba.fastjson.JSONPath.PropertySegment.class) {
                    return false;
                }
                i5++;
            }
        } catch (com.alibaba.fastjson.JSONPathException unused) {
            return false;
        }
    }

    public java.util.Set<?> keySet(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i5 = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                return evalKeySet(objEval);
            }
            objEval = segmentArr[i5].eval(this, obj, objEval);
            i5++;
        }
    }

    public void patchAdd(java.lang.Object obj, java.lang.Object obj2, boolean z4) {
        if (obj == null) {
            return;
        }
        init();
        java.lang.Object obj3 = null;
        int i5 = 0;
        java.lang.Object obj4 = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                break;
            }
            com.alibaba.fastjson.JSONPath.Segment segment = segmentArr[i5];
            java.lang.Object objEval = segment.eval(this, obj, obj4);
            if (objEval == null && i5 != this.segments.length - 1 && (segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment)) {
                objEval = new com.alibaba.fastjson.JSONObject();
                ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).setValue(this, obj4, objEval);
            }
            i5++;
            obj3 = obj4;
            obj4 = objEval;
        }
        if (!z4 && (obj4 instanceof java.util.Collection)) {
            ((java.util.Collection) obj4).add(obj2);
            return;
        }
        if (obj4 != null && !z4) {
            java.lang.Class<?> cls = obj4.getClass();
            if (cls.isArray()) {
                int length = java.lang.reflect.Array.getLength(obj4);
                java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls.getComponentType(), length + 1);
                java.lang.System.arraycopy(obj4, 0, objNewInstance, 0, length);
                java.lang.reflect.Array.set(objNewInstance, length, obj2);
                obj2 = objNewInstance;
            } else if (!java.util.Map.class.isAssignableFrom(cls)) {
                throw new com.alibaba.fastjson.JSONException("unsupported array put operation. " + cls);
            }
        }
        com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = this.segments;
        com.alibaba.fastjson.JSONPath.Segment segment2 = segmentArr2[segmentArr2.length - 1];
        if (segment2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
            ((com.alibaba.fastjson.JSONPath.PropertySegment) segment2).setValue(this, obj3, obj2);
        } else {
            if (!(segment2 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment)) {
                throw new java.lang.UnsupportedOperationException();
            }
            ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment2).setValue(this, obj3, obj2);
        }
    }

    public boolean remove(java.lang.Object obj) {
        boolean z4 = false;
        if (obj == null) {
            return false;
        }
        init();
        java.lang.Object obj2 = null;
        com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
        com.alibaba.fastjson.JSONPath.Segment segment = segmentArr[segmentArr.length - 1];
        java.lang.Object objEval = obj;
        int i5 = 0;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = this.segments;
            if (i5 >= segmentArr2.length) {
                break;
            }
            if (i5 == segmentArr2.length - 1) {
                obj2 = objEval;
                break;
            }
            com.alibaba.fastjson.JSONPath.Segment segment2 = segmentArr2[i5];
            if (i5 == segmentArr2.length - 2 && (segment instanceof com.alibaba.fastjson.JSONPath.FilterSegment) && (segment2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment)) {
                com.alibaba.fastjson.JSONPath.FilterSegment filterSegment = (com.alibaba.fastjson.JSONPath.FilterSegment) segment;
                if (objEval instanceof java.util.List) {
                    com.alibaba.fastjson.JSONPath.PropertySegment propertySegment = (com.alibaba.fastjson.JSONPath.PropertySegment) segment2;
                    java.util.Iterator it = ((java.util.List) objEval).iterator();
                    while (it.hasNext()) {
                        java.lang.Object objEval2 = propertySegment.eval(this, obj, it.next());
                        if (objEval2 instanceof java.lang.Iterable) {
                            filterSegment.remove(this, obj, objEval2);
                        } else if ((objEval2 instanceof java.util.Map) && filterSegment.filter.apply(this, obj, objEval, objEval2)) {
                            it.remove();
                        }
                    }
                    return true;
                }
                if (objEval instanceof java.util.Map) {
                    com.alibaba.fastjson.JSONPath.PropertySegment propertySegment2 = (com.alibaba.fastjson.JSONPath.PropertySegment) segment2;
                    java.lang.Object objEval3 = propertySegment2.eval(this, obj, objEval);
                    if (objEval3 == null) {
                        return false;
                    }
                    if ((objEval3 instanceof java.util.Map) && filterSegment.filter.apply(this, obj, objEval, objEval3)) {
                        propertySegment2.remove(this, objEval);
                        return true;
                    }
                }
            }
            objEval = segment2.eval(this, obj, objEval);
            if (objEval == null) {
                break;
            }
            i5++;
        }
        if (obj2 == null) {
            return false;
        }
        if (!(segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment)) {
            if (segment instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment) {
                return ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment).remove(this, obj2);
            }
            if (segment instanceof com.alibaba.fastjson.JSONPath.FilterSegment) {
                return ((com.alibaba.fastjson.JSONPath.FilterSegment) segment).remove(this, obj, obj2);
            }
            throw new java.lang.UnsupportedOperationException();
        }
        com.alibaba.fastjson.JSONPath.PropertySegment propertySegment3 = (com.alibaba.fastjson.JSONPath.PropertySegment) segment;
        if (obj2 instanceof java.util.Collection) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr3 = this.segments;
            if (segmentArr3.length > 1) {
                com.alibaba.fastjson.JSONPath.Segment segment3 = segmentArr3[segmentArr3.length - 2];
                if ((segment3 instanceof com.alibaba.fastjson.JSONPath.RangeSegment) || (segment3 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment)) {
                    java.util.Iterator it2 = ((java.util.Collection) obj2).iterator();
                    while (it2.hasNext()) {
                        if (propertySegment3.remove(this, it2.next())) {
                            z4 = true;
                        }
                    }
                    return z4;
                }
            }
        }
        return propertySegment3.remove(this, obj2);
    }

    public boolean removeArrayItem(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, int i5) {
        if (!(obj instanceof java.util.List)) {
            throw new com.alibaba.fastjson.JSONPathException("unsupported set operation." + obj.getClass());
        }
        java.util.List list = (java.util.List) obj;
        if (i5 >= 0) {
            if (i5 >= list.size()) {
                return false;
            }
            list.remove(i5);
            return true;
        }
        int size = list.size() + i5;
        if (size < 0) {
            return false;
        }
        list.remove(size);
        return true;
    }

    public boolean removePropertyValue(java.lang.Object obj, java.lang.String str, boolean z4) {
        boolean z5 = true;
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            z5 = map.remove(str) != null;
            if (z4) {
                java.util.Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    removePropertyValue(it.next(), str, z4);
                }
            }
            return z5;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            if (z4) {
                return false;
            }
            throw new java.lang.UnsupportedOperationException();
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
        if (fieldDeserializer != null) {
            fieldDeserializer.setValue(obj, (java.lang.String) null);
        } else {
            z5 = false;
        }
        if (z4) {
            for (java.lang.Object obj2 : getPropertyValues(obj)) {
                if (obj2 != null) {
                    removePropertyValue(obj2, str, z4);
                }
            }
        }
        return z5;
    }

    public boolean set(java.lang.Object obj, java.lang.Object obj2) {
        return set(obj, obj2, true);
    }

    public boolean setArrayItem(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, int i5, java.lang.Object obj2) {
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            if (i5 >= 0) {
                list.set(i5, obj2);
            } else {
                list.set(list.size() + i5, obj2);
            }
            return true;
        }
        java.lang.Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            throw new com.alibaba.fastjson.JSONPathException("unsupported set operation." + cls);
        }
        int length = java.lang.reflect.Array.getLength(obj);
        if (i5 >= 0) {
            if (i5 < length) {
                java.lang.reflect.Array.set(obj, i5, obj2);
            }
        } else if (java.lang.Math.abs(i5) <= length) {
            java.lang.reflect.Array.set(obj, length + i5, obj2);
        }
        return true;
    }

    public boolean setPropertyValue(java.lang.Object obj, java.lang.String str, long j5, java.lang.Object obj2) {
        if (obj instanceof java.util.Map) {
            ((java.util.Map) obj).put(str, obj2);
            return true;
        }
        if (obj instanceof java.util.List) {
            for (java.lang.Object obj3 : (java.util.List) obj) {
                if (obj3 != null) {
                    setPropertyValue(obj3, str, j5, obj2);
                }
            }
            return true;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            throw new java.lang.UnsupportedOperationException();
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(j5);
        if (fieldDeserializer == null) {
            return false;
        }
        if (obj2 != null) {
            java.lang.Class<?> cls = obj2.getClass();
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
            if (cls != fieldInfo.fieldClass) {
                obj2 = com.alibaba.fastjson.util.TypeUtils.cast(obj2, fieldInfo.fieldType, this.parserConfig);
            }
        }
        fieldDeserializer.setValue(obj, obj2);
        return true;
    }

    public int size(java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        init();
        int i5 = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                return evalSize(objEval);
            }
            objEval = segmentArr[i5].eval(this, obj, objEval);
            i5++;
        }
    }

    @Override // com.alibaba.fastjson.JSONAware
    public java.lang.String toJSONString() {
        return com.alibaba.fastjson.JSON.toJSONString(this.path);
    }

    public JSONPath(java.lang.String str, boolean z4) {
        this(str, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), z4);
    }

    public static java.util.Map<java.lang.String, java.lang.Object> paths(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        java.util.IdentityHashMap identityHashMap = new java.util.IdentityHashMap();
        java.util.HashMap map = new java.util.HashMap();
        paths(identityHashMap, map, "/", obj, serializeConfig);
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004b  */
    public boolean set(java.lang.Object obj, java.lang.Object obj2, boolean z4) {
        java.lang.Class<?> cls;
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer;
        if (obj == null) {
            return false;
        }
        init();
        java.lang.Object obj3 = obj;
        int i5 = 0;
        java.lang.Object obj4 = null;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i5 >= segmentArr.length) {
                obj3 = obj4;
                break;
            }
            com.alibaba.fastjson.JSONPath.Segment segment = segmentArr[i5];
            java.lang.Object objEval = segment.eval(this, obj, obj3);
            if (objEval == null) {
                com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = this.segments;
                com.alibaba.fastjson.JSONPath.Segment segment2 = i5 < segmentArr2.length - 1 ? segmentArr2[i5 + 1] : null;
                if (segment2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
                    if (segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
                        java.lang.String str = ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).propertyName;
                        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer2 = getJavaBeanDeserializer(obj3.getClass());
                        if (javaBeanDeserializer2 != null) {
                            cls = javaBeanDeserializer2.getFieldDeserializer(str).fieldInfo.fieldClass;
                            javaBeanDeserializer = getJavaBeanDeserializer(cls);
                        } else {
                            cls = null;
                            javaBeanDeserializer = null;
                        }
                    } else {
                        cls = null;
                        javaBeanDeserializer = null;
                    }
                    if (javaBeanDeserializer == null) {
                        objEval = new com.alibaba.fastjson.JSONObject();
                    } else {
                        if (javaBeanDeserializer.beanInfo.defaultConstructor == null) {
                            return false;
                        }
                        objEval = javaBeanDeserializer.createInstance((com.alibaba.fastjson.parser.DefaultJSONParser) null, cls);
                    }
                } else {
                    objEval = segment2 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment ? new com.alibaba.fastjson.JSONArray() : null;
                }
                if (objEval != null) {
                    if (!(segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment)) {
                        if (!(segment instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment)) {
                            break;
                        }
                        ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment).setValue(this, obj3, objEval);
                    } else {
                        ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).setValue(this, obj3, objEval);
                    }
                } else {
                    break;
                }
            }
            i5++;
            obj4 = obj3;
            obj3 = objEval;
        }
        if (obj3 == null) {
            return false;
        }
        com.alibaba.fastjson.JSONPath.Segment[] segmentArr3 = this.segments;
        com.alibaba.fastjson.JSONPath.Segment segment3 = segmentArr3[segmentArr3.length - 1];
        if (segment3 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
            ((com.alibaba.fastjson.JSONPath.PropertySegment) segment3).setValue(this, obj3, obj2);
            return true;
        }
        if (segment3 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment) {
            return ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment3).setValue(this, obj3, obj2);
        }
        throw new java.lang.UnsupportedOperationException();
    }

    public JSONPath(java.lang.String str, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.parser.ParserConfig parserConfig, boolean z4) {
        if (str != null && str.length() != 0) {
            this.path = str;
            this.serializeConfig = serializeConfig;
            this.parserConfig = parserConfig;
            this.ignoreNullValue = z4;
            return;
        }
        throw new com.alibaba.fastjson.JSONPathException("json-path can not be null or empty");
    }

    public static <T> T read(java.lang.String str, java.lang.String str2, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return (T) compile(str2).eval(com.alibaba.fastjson.JSON.parse(str), type, parserConfig);
    }

    public static java.util.Set<?> keySet(java.lang.Object obj, java.lang.String str) {
        com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
        return jSONPathCompile.evalKeySet(jSONPathCompile.eval(obj));
    }

    private static void paths(java.util.Map<java.lang.Object, java.lang.String> map, java.util.Map<java.lang.String, java.lang.Object> map2, java.lang.String str, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        java.lang.StringBuilder sb;
        java.lang.StringBuilder sb2;
        java.lang.StringBuilder sb3;
        java.lang.StringBuilder sb4;
        if (obj == null) {
            return;
        }
        int i5 = 0;
        if (map.put(obj, str) != null) {
            java.lang.Class<?> cls = obj.getClass();
            if (!(cls == java.lang.String.class || cls == java.lang.Boolean.class || cls == java.lang.Character.class || cls == java.util.UUID.class || cls.isEnum() || (obj instanceof java.lang.Number) || (obj instanceof java.util.Date))) {
                return;
            }
        }
        map2.put(str, obj);
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                java.lang.Object key = entry.getKey();
                if (key instanceof java.lang.String) {
                    if (str.equals("/")) {
                        sb4 = new java.lang.StringBuilder();
                    } else {
                        sb4 = new java.lang.StringBuilder();
                        sb4.append(str);
                    }
                    sb4.append("/");
                    sb4.append(key);
                    paths(map, map2, sb4.toString(), entry.getValue(), serializeConfig);
                }
            }
            return;
        }
        if (obj instanceof java.util.Collection) {
            for (java.lang.Object obj2 : (java.util.Collection) obj) {
                if (str.equals("/")) {
                    sb3 = new java.lang.StringBuilder();
                } else {
                    sb3 = new java.lang.StringBuilder();
                    sb3.append(str);
                }
                sb3.append("/");
                sb3.append(i5);
                paths(map, map2, sb3.toString(), obj2, serializeConfig);
                i5++;
            }
            return;
        }
        java.lang.Class<?> cls2 = obj.getClass();
        if (cls2.isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            while (i5 < length) {
                java.lang.Object obj3 = java.lang.reflect.Array.get(obj, i5);
                if (str.equals("/")) {
                    sb2 = new java.lang.StringBuilder();
                } else {
                    sb2 = new java.lang.StringBuilder();
                    sb2.append(str);
                }
                sb2.append("/");
                sb2.append(i5);
                paths(map, map2, sb2.toString(), obj3, serializeConfig);
                i5++;
            }
            return;
        }
        if (com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls2) || cls2.isEnum()) {
            return;
        }
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = serializeConfig.getObjectWriter(cls2);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            try {
                for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry2 : ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter).getFieldValuesMap(obj).entrySet()) {
                    java.lang.String key2 = entry2.getKey();
                    if (key2 instanceof java.lang.String) {
                        if (str.equals("/")) {
                            sb = new java.lang.StringBuilder();
                            sb.append("/");
                            sb.append(key2);
                        } else {
                            sb = new java.lang.StringBuilder();
                            sb.append(str);
                            sb.append("/");
                            sb.append(key2);
                        }
                        paths(map, map2, sb.toString(), entry2.getValue(), serializeConfig);
                    }
                }
            } catch (java.lang.Exception e5) {
                throw new com.alibaba.fastjson.JSONException("toJSON error", e5);
            }
        }
    }

    public static <T> T read(java.lang.String str, java.lang.String str2, java.lang.reflect.Type type) {
        return (T) read(str, str2, type, null);
    }

    public static int size(java.lang.Object obj, java.lang.String str) {
        com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
        return jSONPathCompile.evalSize(jSONPathCompile.eval(obj));
    }

    public <T> T eval(java.lang.Object obj, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(eval(obj), type, parserConfig);
    }

    public static boolean contains(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            return false;
        }
        return compile(str).contains(obj);
    }

    public static com.alibaba.fastjson.JSONPath compile(java.lang.String str, boolean z4) {
        if (str != null) {
            com.alibaba.fastjson.JSONPath jSONPath = pathCache.get(str);
            if (jSONPath != null) {
                return jSONPath;
            }
            com.alibaba.fastjson.JSONPath jSONPath2 = new com.alibaba.fastjson.JSONPath(str, z4);
            if (pathCache.size() >= 1024) {
                return jSONPath2;
            }
            pathCache.putIfAbsent(str, jSONPath2);
            return pathCache.get(str);
        }
        throw new com.alibaba.fastjson.JSONPathException("jsonpath can not be null");
    }

    public <T> T eval(java.lang.Object obj, java.lang.reflect.Type type) {
        return (T) eval(obj, type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static boolean containsValue(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        return compile(str).containsValue(obj, obj2);
    }

    public static java.lang.Object eval(java.lang.Object obj, java.lang.String str) {
        return compile(str).eval(obj);
    }

    public static java.lang.Object eval(java.lang.Object obj, java.lang.String str, boolean z4) {
        return compile(str, z4).eval(obj);
    }

    public static void arrayAdd(java.lang.Object obj, java.lang.String str, java.lang.Object... objArr) {
        compile(str).arrayAdd(obj, objArr);
    }

    public static java.lang.Object extract(java.lang.String str, java.lang.String str2, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i5, com.alibaba.fastjson.parser.Feature... featureArr) {
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i5 | com.alibaba.fastjson.parser.Feature.OrderedField.mask);
        java.lang.Object objExtract = compile(str2).extract(defaultJSONParser);
        defaultJSONParser.lexer.close();
        return objExtract;
    }

    public static java.lang.Object extract(java.lang.String str, java.lang.String str2) {
        return extract(str, str2, com.alibaba.fastjson.parser.ParserConfig.global, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, new com.alibaba.fastjson.parser.Feature[0]);
    }

    public static boolean set(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        return compile(str).set(obj, obj2);
    }

    public static boolean remove(java.lang.Object obj, java.lang.String str) {
        return compile(str).remove(obj);
    }
}
