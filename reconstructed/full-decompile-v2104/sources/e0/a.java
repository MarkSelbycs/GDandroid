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
/* JADX INFO: compiled from: CursorUtil.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class a {
    public static final android.database.Cursor a(android.database.Cursor cursor) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(cursor, "c");
        try {
            android.database.MatrixCursor matrixCursor = new android.database.MatrixCursor(cursor.getColumnNames(), cursor.getCount());
            while (cursor.moveToNext()) {
                java.lang.Object[] objArr = new java.lang.Object[cursor.getColumnCount()];
                int columnCount = cursor.getColumnCount();
                for (int i5 = 0; i5 < columnCount; i5++) {
                    int type = cursor.getType(i5);
                    if (type == 0) {
                        objArr[i5] = null;
                    } else if (type == 1) {
                        objArr[i5] = java.lang.Long.valueOf(cursor.getLong(i5));
                    } else if (type == 2) {
                        objArr[i5] = java.lang.Double.valueOf(cursor.getDouble(i5));
                    } else if (type == 3) {
                        objArr[i5] = cursor.getString(i5);
                    } else {
                        if (type != 4) {
                            throw new java.lang.IllegalStateException();
                        }
                        objArr[i5] = cursor.getBlob(i5);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            j3.a.a(cursor, null);
            return matrixCursor;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursor, th);
                throw th2;
            }
        }
    }

    public static final int b(android.database.Cursor cursor, java.lang.String str) {
        return -1;
    }

    public static final int c(android.database.Cursor cursor, java.lang.String str) {
        m3.k.e(cursor, "c");
        m3.k.e(str, "name");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex('`' + str + '`');
        return columnIndex2 >= 0 ? columnIndex2 : b(cursor, str);
    }

    public static final int d(android.database.Cursor cursor, java.lang.String str) {
        java.lang.String strP;
        m3.k.e(cursor, "c");
        m3.k.e(str, "name");
        int iC = c(cursor, str);
        if (iC >= 0) {
            return iC;
        }
        try {
            java.lang.String[] columnNames = cursor.getColumnNames();
            m3.k.d(columnNames, "c.columnNames");
            strP = b3.k.p(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (java.lang.Exception e5) {
            android.util.Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e5);
            strP = "unknown";
        }
        throw new java.lang.IllegalArgumentException("column '" + str + "' does not exist. Available columns: " + strP);
    }
}
