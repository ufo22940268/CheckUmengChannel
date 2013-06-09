.class final Lcom/zhangdan/preferential/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/preferential/a/n;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/data/a;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bd;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "menu_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/g;

    iget-object v1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    iget v2, v0, Lcom/zhangdan/preferential/data/model/g;->c:I

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->b(Lcom/zhangdan/preferential/as;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->b(Lcom/zhangdan/preferential/as;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/preferential/at;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/g;)V

    goto :goto_0
.end method
