package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableData implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableData> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableData.a();
    private static final byte TYPE_BOOLEAN = 1;
    private static final byte TYPE_BOOLEAN_ARRAY = 8;
    private static final byte TYPE_BYTE = 2;
    private static final byte TYPE_BYTE_ARRAY = 9;
    private static final byte TYPE_DOUBLE = 6;
    private static final byte TYPE_DOUBLE_ARRAY = 13;
    private static final byte TYPE_FLOAT = 5;
    private static final byte TYPE_FLOAT_ARRAY = 12;
    private static final byte TYPE_INTEGER = 3;
    private static final byte TYPE_INTEGER_ARRAY = 10;
    private static final byte TYPE_LONG = 4;
    private static final byte TYPE_LONG_ARRAY = 11;
    private static final byte TYPE_NULL = 0;
    private static final byte TYPE_STRING = 7;
    private static final byte TYPE_STRING_ARRAY = 14;
    private final androidx.work.b mData;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableData> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableData createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableData[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableData[i5];
        }
    }

    public ParcelableData(androidx.work.b bVar) {
        this.mData = bVar;
    }

    public final void a(android.os.Parcel parcel, java.util.Map<java.lang.String, java.lang.Object> map) {
        java.lang.Object objValueOf;
        byte b5 = parcel.readByte();
        switch (b5) {
            case 0:
                objValueOf = null;
                break;
            case 1:
                objValueOf = java.lang.Boolean.valueOf(e1.b.a(parcel));
                break;
            case 2:
                objValueOf = java.lang.Byte.valueOf(parcel.readByte());
                break;
            case 3:
                objValueOf = java.lang.Integer.valueOf(parcel.readInt());
                break;
            case 4:
                objValueOf = java.lang.Long.valueOf(parcel.readLong());
                break;
            case 5:
                objValueOf = java.lang.Float.valueOf(parcel.readFloat());
                break;
            case 6:
                objValueOf = java.lang.Double.valueOf(parcel.readDouble());
                break;
            case 7:
                objValueOf = parcel.readString();
                break;
            case 8:
                objValueOf = androidx.work.b.a(parcel.createBooleanArray());
                break;
            case 9:
                objValueOf = androidx.work.b.b(parcel.createByteArray());
                break;
            case 10:
                objValueOf = androidx.work.b.e(parcel.createIntArray());
                break;
            case 11:
                objValueOf = androidx.work.b.f(parcel.createLongArray());
                break;
            case 12:
                objValueOf = androidx.work.b.d(parcel.createFloatArray());
                break;
            case 13:
                objValueOf = androidx.work.b.c(parcel.createDoubleArray());
                break;
            case 14:
                objValueOf = parcel.createStringArray();
                break;
            default:
                throw new java.lang.IllegalStateException("Unsupported type " + ((int) b5));
        }
        map.put(parcel.readString(), objValueOf);
    }

    public androidx.work.b b() {
        return this.mData;
    }

    public final void c(android.os.Parcel parcel, java.lang.String str, java.lang.Object obj) {
        if (obj == null) {
            parcel.writeByte(TYPE_NULL);
        } else {
            java.lang.Class<?> cls = obj.getClass();
            if (cls == java.lang.Boolean.class) {
                parcel.writeByte(TYPE_BOOLEAN);
                e1.b.b(parcel, ((java.lang.Boolean) obj).booleanValue());
            } else if (cls == java.lang.Byte.class) {
                parcel.writeByte(TYPE_BYTE);
                parcel.writeByte(((java.lang.Byte) obj).byteValue());
            } else if (cls == java.lang.Integer.class) {
                parcel.writeByte(TYPE_INTEGER);
                parcel.writeInt(((java.lang.Integer) obj).intValue());
            } else if (cls == java.lang.Long.class) {
                parcel.writeByte(TYPE_LONG);
                parcel.writeLong(((java.lang.Long) obj).longValue());
            } else if (cls == java.lang.Float.class) {
                parcel.writeByte(TYPE_FLOAT);
                parcel.writeFloat(((java.lang.Float) obj).floatValue());
            } else if (cls == java.lang.Double.class) {
                parcel.writeByte(TYPE_DOUBLE);
                parcel.writeDouble(((java.lang.Double) obj).doubleValue());
            } else if (cls == java.lang.String.class) {
                parcel.writeByte(TYPE_STRING);
                parcel.writeString((java.lang.String) obj);
            } else if (cls == java.lang.Boolean[].class) {
                parcel.writeByte(TYPE_BOOLEAN_ARRAY);
                parcel.writeBooleanArray(androidx.work.b.l((java.lang.Boolean[]) obj));
            } else if (cls == java.lang.Byte[].class) {
                parcel.writeByte(TYPE_BYTE_ARRAY);
                parcel.writeByteArray(androidx.work.b.g((java.lang.Byte[]) obj));
            } else if (cls == java.lang.Integer[].class) {
                parcel.writeByte(TYPE_INTEGER_ARRAY);
                parcel.writeIntArray(androidx.work.b.j((java.lang.Integer[]) obj));
            } else if (cls == java.lang.Long[].class) {
                parcel.writeByte(TYPE_LONG_ARRAY);
                parcel.writeLongArray(androidx.work.b.k((java.lang.Long[]) obj));
            } else if (cls == java.lang.Float[].class) {
                parcel.writeByte(TYPE_FLOAT_ARRAY);
                parcel.writeFloatArray(androidx.work.b.i((java.lang.Float[]) obj));
            } else if (cls == java.lang.Double[].class) {
                parcel.writeByte(TYPE_DOUBLE_ARRAY);
                parcel.writeDoubleArray(androidx.work.b.h((java.lang.Double[]) obj));
            } else {
                if (cls != java.lang.String[].class) {
                    throw new java.lang.IllegalArgumentException("Unsupported value type " + cls.getName());
                }
                parcel.writeByte(TYPE_STRING_ARRAY);
                parcel.writeStringArray((java.lang.String[]) obj);
            }
        }
        parcel.writeString(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        java.util.Map<java.lang.String, java.lang.Object> mapN = this.mData.n();
        parcel.writeInt(mapN.size());
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : mapN.entrySet()) {
            c(parcel, entry.getKey(), entry.getValue());
        }
    }

    public ParcelableData(android.os.Parcel parcel) {
        java.util.HashMap map = new java.util.HashMap();
        int i5 = parcel.readInt();
        for (int i6 = 0; i6 < i5; i6++) {
            a(parcel, map);
        }
        this.mData = new androidx.work.b(map);
    }
}
