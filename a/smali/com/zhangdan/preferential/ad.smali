.class final Lcom/zhangdan/preferential/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/preferential/a/n;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ab;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zhangdan.preferential.UPDATE_WEIBO_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->a(Lcom/zhangdan/preferential/ab;)V

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

    iget-object v1, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    iget v2, v0, Lcom/zhangdan/preferential/data/model/g;->c:I

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/ab;->a(Lcom/zhangdan/preferential/ab;I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v1}, Lcom/zhangdan/preferential/ab;->b(Lcom/zhangdan/preferential/ab;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u9644\u8fd1"

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/ab;->a(Lcom/zhangdan/preferential/ab;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->c(Lcom/zhangdan/preferential/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->c(Lcom/zhangdan/preferential/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->d(Lcom/zhangdan/preferential/ab;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/preferential/ad;->a:Lcom/zhangdan/preferential/ab;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/ab;->a(Lcom/zhangdan/preferential/ab;Ljava/lang/String;)V

    goto :goto_1
.end method
