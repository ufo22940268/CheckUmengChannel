.class public Lcom/zhangdan/app/widget/NumericEditText;
.super Landroid/widget/EditText;
.source "NumericEditText.java"


# instance fields
.field private mIntegerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/widget/NumericEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/widget/NumericEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/widget/NumericEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/zhangdan/app/widget/NumericEditText;->mIntegerCount:I

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    sget-object v1, Lcom/zhangdan/app/R$styleable;->NumericEditText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, typedArr:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/widget/NumericEditText;->mIntegerCount:I

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    new-instance v1, Lcom/zhangdan/app/widget/NumericEditText$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/NumericEditText$1;-><init>(Lcom/zhangdan/app/widget/NumericEditText;)V

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/widget/NumericEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    return-void
.end method
