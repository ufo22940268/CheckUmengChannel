.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static synthetic m:[I

.field private static synthetic n:[I


# instance fields
.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Lcom/handmark/pulltorefresh/library/f;

.field protected final e:Lcom/handmark/pulltorefresh/library/l;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/l;Landroid/content/res/TypedArray;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d:Lcom/handmark/pulltorefresh/library/f;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/l;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/ad;->b:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    sget v0, Lcom/handmark/pulltorefresh/library/ac;->g:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/ac;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/ac;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/ac;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/ac;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->a:Lcom/handmark/pulltorefresh/library/l;

    if-ne p3, v1, :cond_b

    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->e:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_3
    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k()V

    return-void

    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/ad;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->a:Lcom/handmark/pulltorefresh/library/l;

    if-ne p3, v1, :cond_a

    const/16 v1, 0x30

    :goto_5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->c:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->d:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    sget v0, Lcom/handmark/pulltorefresh/library/ae;->f:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_d
    const/16 v1, 0x11

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "ptrDrawableTop"

    const-string v1, "ptrDrawableStart"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_e
    const/16 v1, 0x12

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "ptrDrawableBottom"

    const-string v1, "ptrDrawableEnd"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic m()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/l;->values()[Lcom/handmark/pulltorefresh/library/l;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->b:Lcom/handmark/pulltorefresh/library/l;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->a:Lcom/handmark/pulltorefresh/library/l;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic n()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->values()[Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(F)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()I
.end method

.method public final f()I
    .locals 2

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/l;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a()V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b()V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c()V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final l()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
