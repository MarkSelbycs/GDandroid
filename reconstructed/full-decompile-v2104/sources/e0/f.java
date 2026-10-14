package e0;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: TableInfo.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class f {
    public static final java.util.Map<java.lang.String, e0.e.a> a(f0.g gVar, java.lang.String str) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        android.database.Cursor cursorO0 = gVar.o0("PRAGMA table_info(`" + str + "`)");
        try {
            if (cursorO0.getColumnCount() <= 0) {
                java.util.Map<java.lang.String, e0.e.a> mapG = b3.h0.g();
                j3.a.a(cursorO0, null);
                return mapG;
            }
            int columnIndex = cursorO0.getColumnIndex("name");
            int columnIndex2 = cursorO0.getColumnIndex("type");
            int columnIndex3 = cursorO0.getColumnIndex("notnull");
            int columnIndex4 = cursorO0.getColumnIndex("pk");
            int columnIndex5 = cursorO0.getColumnIndex("dflt_value");
            java.util.Map mapC = b3.g0.c();
            while (cursorO0.moveToNext()) {
                java.lang.String string = cursorO0.getString(columnIndex);
                java.lang.String string2 = cursorO0.getString(columnIndex2);
                boolean z4 = cursorO0.getInt(columnIndex3) != 0;
                int i5 = cursorO0.getInt(columnIndex4);
                java.lang.String string3 = cursorO0.getString(columnIndex5);
                m3.k.d(string, "name");
                m3.k.d(string2, "type");
                mapC.put(string, new e0.e.a(string, string2, z4, i5, string3, 2));
            }
            java.util.Map<java.lang.String, e0.e.a> mapB = b3.g0.b(mapC);
            j3.a.a(cursorO0, null);
            return mapB;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursorO0, th);
                throw th2;
            }
        }
    }

    public static final java.util.List<e0.e.d> b(android.database.Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        java.util.List listC = b3.n.c();
        while (cursor.moveToNext()) {
            int i5 = cursor.getInt(columnIndex);
            int i6 = cursor.getInt(columnIndex2);
            java.lang.String string = cursor.getString(columnIndex3);
            m3.k.d(string, "cursor.getString(fromColumnIndex)");
            java.lang.String string2 = cursor.getString(columnIndex4);
            m3.k.d(string2, "cursor.getString(toColumnIndex)");
            listC.add(new e0.e.d(i5, i6, string, string2));
        }
        return b3.w.y(b3.n.a(listC));
    }

    public static final java.util.Set<e0.e.c> c(f0.g gVar, java.lang.String str) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        android.database.Cursor cursorO0 = gVar.o0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorO0.getColumnIndex("id");
            int columnIndex2 = cursorO0.getColumnIndex("seq");
            int columnIndex3 = cursorO0.getColumnIndex("table");
            int columnIndex4 = cursorO0.getColumnIndex("on_delete");
            int columnIndex5 = cursorO0.getColumnIndex("on_update");
            java.util.List<e0.e.d> listB = b(cursorO0);
            cursorO0.moveToPosition(-1);
            java.util.Set setB = b3.i0.b();
            while (cursorO0.moveToNext()) {
                if (cursorO0.getInt(columnIndex2) == 0) {
                    int i5 = cursorO0.getInt(columnIndex);
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    java.util.ArrayList arrayList2 = new java.util.ArrayList();
                    java.util.ArrayList<e0.e.d> arrayList3 = new java.util.ArrayList();
                    for (java.lang.Object obj : listB) {
                        if (((e0.e.d) obj).d() == i5) {
                            arrayList3.add(obj);
                        }
                    }
                    for (e0.e.d dVar : arrayList3) {
                        arrayList.add(dVar.b());
                        arrayList2.add(dVar.e());
                    }
                    java.lang.String string = cursorO0.getString(columnIndex3);
                    m3.k.d(string, "cursor.getString(tableColumnIndex)");
                    java.lang.String string2 = cursorO0.getString(columnIndex4);
                    m3.k.d(string2, "cursor.getString(onDeleteColumnIndex)");
                    java.lang.String string3 = cursorO0.getString(columnIndex5);
                    m3.k.d(string3, "cursor.getString(onUpdateColumnIndex)");
                    setB.add(new e0.e.c(string, string2, string3, arrayList, arrayList2));
                }
            }
            java.util.Set<e0.e.c> setA = b3.i0.a(setB);
            j3.a.a(cursorO0, null);
            return setA;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursorO0, th);
                throw th2;
            }
        }
    }

    public static final e0.e.C0044e d(f0.g gVar, java.lang.String str, boolean z4) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        android.database.Cursor cursorO0 = gVar.o0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorO0.getColumnIndex("seqno");
            int columnIndex2 = cursorO0.getColumnIndex("cid");
            int columnIndex3 = cursorO0.getColumnIndex("name");
            int columnIndex4 = cursorO0.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                java.util.TreeMap treeMap = new java.util.TreeMap();
                java.util.TreeMap treeMap2 = new java.util.TreeMap();
                while (cursorO0.moveToNext()) {
                    if (cursorO0.getInt(columnIndex2) >= 0) {
                        int i5 = cursorO0.getInt(columnIndex);
                        java.lang.String string = cursorO0.getString(columnIndex3);
                        java.lang.String str2 = cursorO0.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        java.lang.Integer numValueOf = java.lang.Integer.valueOf(i5);
                        m3.k.d(string, "columnName");
                        treeMap.put(numValueOf, string);
                        treeMap2.put(java.lang.Integer.valueOf(i5), str2);
                    }
                }
                java.util.Collection collectionValues = treeMap.values();
                m3.k.d(collectionValues, "columnsMap.values");
                java.util.List listB = b3.w.B(collectionValues);
                java.util.Collection collectionValues2 = treeMap2.values();
                m3.k.d(collectionValues2, "ordersMap.values");
                e0.e.C0044e c0044e = new e0.e.C0044e(str, z4, listB, b3.w.B(collectionValues2));
                j3.a.a(cursorO0, null);
                return c0044e;
            }
            j3.a.a(cursorO0, null);
            return null;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursorO0, th);
                throw th2;
            }
        }
    }

    public static final java.util.Set<e0.e.C0044e> e(f0.g gVar, java.lang.String str) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        android.database.Cursor cursorO0 = gVar.o0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorO0.getColumnIndex("name");
            int columnIndex2 = cursorO0.getColumnIndex("origin");
            int columnIndex3 = cursorO0.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                java.util.Set setB = b3.i0.b();
                while (cursorO0.moveToNext()) {
                    if (m3.k.a("c", cursorO0.getString(columnIndex2))) {
                        java.lang.String string = cursorO0.getString(columnIndex);
                        boolean z4 = true;
                        if (cursorO0.getInt(columnIndex3) != 1) {
                            z4 = false;
                        }
                        m3.k.d(string, "name");
                        e0.e.C0044e c0044eD = d(gVar, string, z4);
                        if (c0044eD == null) {
                            j3.a.a(cursorO0, null);
                            return null;
                        }
                        setB.add(c0044eD);
                    }
                }
                java.util.Set<e0.e.C0044e> setA = b3.i0.a(setB);
                j3.a.a(cursorO0, null);
                return setA;
            }
            j3.a.a(cursorO0, null);
            return null;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursorO0, th);
                throw th2;
            }
        }
    }

    public static final e0.e f(f0.g gVar, java.lang.String str) {
        m3.k.e(gVar, "database");
        m3.k.e(str, "tableName");
        return new e0.e(str, a(gVar, str), c(gVar, str), e(gVar, str));
    }
}
