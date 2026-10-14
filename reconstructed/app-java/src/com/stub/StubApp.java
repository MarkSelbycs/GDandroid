package com.stub;

import android.content.Context;

/**
 * 360加固(jiagu) 壳类替换实现 —— 脱壳时注入，替代原壳的桩类。
 * 原壳由 assets/libjiagu*.so 在运行时解密真实 dex 并接管这些静态调用。
 * 脱壳后：真实 dex 直接作为 classes.dex 加载，以下方法退化为透传/空操作。
 * 应用代码中共 40 处引用（37×getOrigApplicationContext + interface11 + interface22 + mark）。
 */
public class StubApp {
    /** 原实现返回被壳包装前保存的原始 Application Context；脱壳后二者相同，直接返回。 */
    public static Context getOrigApplicationContext(Context context) {
        return context;
    }

    /** 壳的混淆调度入口（MainActivity 静态块调用 interface11(1652)）；脱壳后无操作。 */
    public static void interface11(int i) { }

    /** 壳对 Activity#onRequestPermissionsResult 的方法抽取回调；已在 MainActivity 中还原为直接委托 PortalMananger。 */
    public static void interface22(int i, String[] strs, int[] ints) { }

    /** 壳的完整性标记点（MainActivity.onCreate）；脱壳后无操作。 */
    public static void mark() { }
}
