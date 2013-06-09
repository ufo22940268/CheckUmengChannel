.class public Lcom/zhangdan/app/widget/NumericEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/widget/NumericEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/widget/NumericEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/widget/NumericEditText;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/widget/NumericEditText;->a:I

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/zhangdan/app/R$styleable;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/widget/NumericEditText;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/zhangdan/app/widget/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/j;-><init>(Lcom/zhangdan/app/widget/NumericEditText;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/NumericEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
