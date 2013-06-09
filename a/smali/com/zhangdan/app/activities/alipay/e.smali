.class public final Lcom/zhangdan/app/activities/alipay/e;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/alipay/e;->a:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f060157

    if-ne v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/e;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zhangdan/app/activities/alipay/e;->a:Z

    const-string v3, "card"

    const-string v4, "show_alipay_desc"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f060158

    if-ne v0, v2, :cond_0

    const v0, 0x7f060159

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/zhangdan/app/activities/alipay/e;->a:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/zhangdan/app/activities/alipay/e;->a:Z

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/alipay/e;->a:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0201c3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const v1, 0x7f0201c2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/e;->setContentView(I)V

    const v0, 0x7f060157

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060158

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
