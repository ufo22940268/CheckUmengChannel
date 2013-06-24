.class public Lcom/zhangdan/app/widget/EmailEditText;
.super Landroid/widget/EditText;
.source "EmailEditText.java"


# instance fields
.field private mNextFocusableEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/zhangdan/app/widget/EmailEditText;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/zhangdan/app/widget/EmailEditText;->init()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/widget/EmailEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V

    return-void
.end method

.method private focusNextEditText()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/widget/EmailEditText;->mNextFocusableEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/zhangdan/app/widget/EmailEditText;->mNextFocusableEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 92
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/zhangdan/app/widget/EmailEditText$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/EmailEditText$1;-><init>(Lcom/zhangdan/app/widget/EmailEditText;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/EmailEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    return-void
.end method


# virtual methods
.method public setNextFocusableEditText(Landroid/widget/EditText;)V
    .locals 0
    .parameter "editText"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zhangdan/app/widget/EmailEditText;->mNextFocusableEdit:Landroid/widget/EditText;

    .line 31
    return-void
.end method
