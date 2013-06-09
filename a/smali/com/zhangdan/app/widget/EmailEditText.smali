.class public Lcom/zhangdan/app/widget/EmailEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/zhangdan/app/widget/EmailEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/zhangdan/app/widget/EmailEditText;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/zhangdan/app/widget/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/e;-><init>(Lcom/zhangdan/app/widget/EmailEditText;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/EmailEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/widget/EmailEditText;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/EmailEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/EmailEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/EmailEditText;->a:Landroid/widget/EditText;

    return-void
.end method
