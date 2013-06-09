.class public final Lcom/zhangdan/preferential/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Lcom/tencent/mm/sdk/a/b;

.field protected b:Lcom/a/a/a/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/zhangdan/preferential/a/ab;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/q;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    const-string v0, "wxcee7e017f8a7dc25"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/a/b;

    move-result-object v0

    const-string v1, "wxcee7e017f8a7dc25"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/a/b;->a(Ljava/lang/String;)Z

    iput-object v0, p0, Lcom/zhangdan/preferential/a/q;->a:Lcom/tencent/mm/sdk/a/b;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/q;->b:Lcom/a/a/a/a;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/q;->d:Lcom/zhangdan/preferential/a/ab;

    return-void
.end method

.method private a(Lcom/zhangdan/preferential/a/t;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    const v2, 0x7f030052

    iget-object v3, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zhangdan/preferential/a/r;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/preferential/a/r;-><init>(Lcom/zhangdan/preferential/a/q;Lcom/zhangdan/preferential/a/t;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/a/q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/q;->b:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->b()Lcom/a/a/a/d/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/a/q;Lcom/zhangdan/preferential/a/t;)V
    .locals 6

    new-instance v0, Lcom/weibo/sdk/android/a/a;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/a;->a(Landroid/content/Context;)Lcom/weibo/sdk/android/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weibo/sdk/android/a/a;-><init>(Lcom/weibo/sdk/android/a;)V

    invoke-static {p1}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/a/t;->a:Ljava/lang/String;

    const-string v3, "90.0"

    const-string v4, "90.0"

    new-instance v5, Lcom/zhangdan/preferential/a/s;

    invoke-direct {v5, p0}, Lcom/zhangdan/preferential/a/s;-><init>(Lcom/zhangdan/preferential/a/q;)V

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/sdk/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/a/q;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/q;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/i;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/a/t;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/t;-><init>(Lcom/zhangdan/preferential/a/q;)V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/zhangdan/preferential/data/model/q;->a(Lcom/zhangdan/preferential/data/model/i;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;Lcom/zhangdan/preferential/data/model/q;)V

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/a/t;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/a/t;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zhangdan/preferential/data/model/l;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Lcom/zhangdan/preferential/a/t;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/t;-><init>(Lcom/zhangdan/preferential/a/q;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\u5730\u5740:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u7535\u8bdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8be6\u60c5\u6233\u8fd9\u91cc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/zhangdan/preferential/data/model/q;->a(Lcom/zhangdan/preferential/data/model/l;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;Lcom/zhangdan/preferential/data/model/q;)V

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/a/t;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/a/t;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    const v3, 0x7f0801a1

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/zhangdan/preferential/a/q;->c:Landroid/content/Context;

    const v3, 0x7f0801a2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
