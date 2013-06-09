.class final Lcom/zhangdan/app/activities/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/g;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/zhangdan/app/data/model/j;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/g;Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/h;->a:Lcom/zhangdan/app/activities/a/g;

    iput-object p2, p0, Lcom/zhangdan/app/activities/a/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/a/h;->c:Lcom/zhangdan/app/data/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/h;->b:Landroid/content/Context;

    const-class v2, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/a/h;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/h;->a:Lcom/zhangdan/app/activities/a/g;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/g;->dismiss()V

    return-void
.end method
