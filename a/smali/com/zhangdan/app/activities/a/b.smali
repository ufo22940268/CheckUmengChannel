.class final Lcom/zhangdan/app/activities/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/a;

.field private final synthetic b:Lcom/zhangdan/app/data/model/j;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/a;Lcom/zhangdan/app/data/model/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/b;->a:Lcom/zhangdan/app/activities/a/a;

    iput-object p2, p0, Lcom/zhangdan/app/activities/a/b;->b:Lcom/zhangdan/app/data/model/j;

    iput-object p3, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/b;->a:Lcom/zhangdan/app/activities/a/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/a;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/b;->b:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    const-class v2, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/a/b;->b:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
