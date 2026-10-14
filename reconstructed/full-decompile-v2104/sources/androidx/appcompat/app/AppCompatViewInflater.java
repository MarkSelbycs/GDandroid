package androidx.appcompat.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatViewInflater {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.Class<?>[] f312b = {android.content.Context.class, android.util.AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f313c = {android.R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.String[] f314d = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.Map<java.lang.String, java.lang.reflect.Constructor<? extends android.view.View>> f315e = new j.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object[] f316a = new java.lang.Object[2];

    public static class a implements android.view.View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.View f317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.reflect.Method f319c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.content.Context f320d;

        public a(android.view.View view, java.lang.String str) {
            this.f317a = view;
            this.f318b = str;
        }

        public final void a(android.content.Context context, java.lang.String str) {
            java.lang.String str2;
            java.lang.reflect.Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f318b, android.view.View.class)) != null) {
                        this.f319c = method;
                        this.f320d = context;
                        return;
                    }
                } catch (java.lang.NoSuchMethodException unused) {
                }
                context = context instanceof android.content.ContextWrapper ? ((android.content.ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f317a.getId();
            if (id == -1) {
                str2 = "";
            } else {
                str2 = " with id '" + this.f317a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new java.lang.IllegalStateException("Could not find method " + this.f318b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f317a.getClass() + str2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            if (this.f319c == null) {
                a(this.f317a.getContext(), this.f318b);
            }
            try {
                this.f319c.invoke(this.f320d, view);
            } catch (java.lang.IllegalAccessException e5) {
                throw new java.lang.IllegalStateException("Could not execute non-public method for android:onClick", e5);
            } catch (java.lang.reflect.InvocationTargetException e6) {
                throw new java.lang.IllegalStateException("Could not execute method for android:onClick", e6);
            }
        }
    }

    public static android.content.Context s(android.content.Context context, android.util.AttributeSet attributeSet, boolean z4, boolean z5) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = z4 ? typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z5 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0)) != 0) {
            android.util.Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId != 0) {
            return ((context instanceof e.d) && ((e.d) context).b() == resourceId) ? context : new e.d(context, resourceId);
        }
        return context;
    }

    public final void a(android.view.View view, android.util.AttributeSet attributeSet) {
        android.content.Context context = view.getContext();
        if ((context instanceof android.content.ContextWrapper) && w.q.y(view)) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f313c);
            java.lang.String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new androidx.appcompat.app.AppCompatViewInflater.a(view, string));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public androidx.appcompat.widget.AppCompatAutoCompleteTextView b(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatAutoCompleteTextView(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatButton c(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatButton(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatCheckBox d(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatCheckBox(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatCheckedTextView e(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatCheckedTextView(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatEditText f(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatEditText(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatImageButton g(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatImageButton(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatImageView h(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatImageView(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView i(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatRadioButton j(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatRadioButton(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatRatingBar k(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatRatingBar(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatSeekBar l(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatSeekBar(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatSpinner m(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatSpinner(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatTextView n(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatTextView(context, attributeSet);
    }

    public android.view.View o(android.content.Context context, java.lang.String str, android.util.AttributeSet attributeSet) {
        return null;
    }

    public final android.view.View p(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet, boolean z4, boolean z5, boolean z6, boolean z7) {
        android.view.View viewK;
        android.content.Context context2 = (!z4 || view == null) ? context : view.getContext();
        if (z5 || z6) {
            context2 = s(context2, attributeSet, z5, z6);
        }
        if (z7) {
            context2 = androidx.appcompat.widget.a0.b(context2);
        }
        str.hashCode();
        switch (str) {
            case "RatingBar":
                viewK = k(context2, attributeSet);
                t(viewK, str);
                break;
            case "CheckedTextView":
                viewK = e(context2, attributeSet);
                t(viewK, str);
                break;
            case "MultiAutoCompleteTextView":
                viewK = i(context2, attributeSet);
                t(viewK, str);
                break;
            case "TextView":
                viewK = n(context2, attributeSet);
                t(viewK, str);
                break;
            case "ImageButton":
                viewK = g(context2, attributeSet);
                t(viewK, str);
                break;
            case "SeekBar":
                viewK = l(context2, attributeSet);
                t(viewK, str);
                break;
            case "Spinner":
                viewK = m(context2, attributeSet);
                t(viewK, str);
                break;
            case "RadioButton":
                viewK = j(context2, attributeSet);
                t(viewK, str);
                break;
            case "ImageView":
                viewK = h(context2, attributeSet);
                t(viewK, str);
                break;
            case "AutoCompleteTextView":
                viewK = b(context2, attributeSet);
                t(viewK, str);
                break;
            case "CheckBox":
                viewK = d(context2, attributeSet);
                t(viewK, str);
                break;
            case "EditText":
                viewK = f(context2, attributeSet);
                t(viewK, str);
                break;
            case "Button":
                viewK = c(context2, attributeSet);
                t(viewK, str);
                break;
            default:
                viewK = o(context2, str, attributeSet);
                break;
        }
        if (viewK == null && context != context2) {
            viewK = r(context2, str, attributeSet);
        }
        if (viewK != null) {
            a(viewK, attributeSet);
        }
        return viewK;
    }

    public final android.view.View q(android.content.Context context, java.lang.String str, java.lang.String str2) throws android.view.InflateException, java.lang.ClassNotFoundException {
        java.lang.String str3;
        java.util.Map<java.lang.String, java.lang.reflect.Constructor<? extends android.view.View>> map = f315e;
        java.lang.reflect.Constructor<? extends android.view.View> constructor = map.get(str);
        if (constructor == null) {
            try {
                java.lang.ClassLoader classLoader = context.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).asSubclass(android.view.View.class).getConstructor(f312b);
                map.put(str, constructor);
            } catch (java.lang.Exception unused) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f316a);
    }

    public final android.view.View r(android.content.Context context, java.lang.String str, android.util.AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            java.lang.Object[] objArr = this.f316a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return q(context, str, null);
            }
            int i5 = 0;
            while (true) {
                java.lang.String[] strArr = f314d;
                if (i5 >= strArr.length) {
                    return null;
                }
                android.view.View viewQ = q(context, str, strArr[i5]);
                if (viewQ != null) {
                    return viewQ;
                }
                i5++;
            }
        } catch (java.lang.Exception unused) {
            return null;
        } finally {
            java.lang.Object[] objArr2 = this.f316a;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    public final void t(android.view.View view, java.lang.String str) {
        if (view != null) {
            return;
        }
        throw new java.lang.IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
