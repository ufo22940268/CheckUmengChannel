.class final Lcom/zhangdan/preferential/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/a/q;

.field private final synthetic b:Lcom/zhangdan/preferential/a/t;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/a/q;Lcom/zhangdan/preferential/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/a/r;->a:Lcom/zhangdan/preferential/a/q;

    iput-object p2, p0, Lcom/zhangdan/preferential/a/r;->b:Lcom/zhangdan/preferential/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_1

    const-string v0, "smsto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    iget-object v2, p0, Lcom/zhangdan/preferential/a/r;->b:Lcom/zhangdan/preferential/a/t;

    invoke-static {v2}, Lcom/zhangdan/preferential/a/t;->a(Lcom/zhangdan/preferential/a/t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/r;->a:Lcom/zhangdan/preferential/a/q;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/a/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/r;->b:Lcom/zhangdan/preferential/a/t;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/t;->b(Lcom/zhangdan/preferential/a/t;)Lcom/zhangdan/preferential/data/model/q;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/a/r;->a:Lcom/zhangdan/preferential/a/q;

    iget-object v1, v1, Lcom/zhangdan/preferential/a/q;->a:Lcom/tencent/mm/sdk/a/b;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/data/model/q;->a(Lcom/tencent/mm/sdk/a/b;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/a/r;->a:Lcom/zhangdan/preferential/a/q;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/r;->b:Lcom/zhangdan/preferential/a/t;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/a/q;Lcom/zhangdan/preferential/a/t;)V

    goto :goto_0
.end method
