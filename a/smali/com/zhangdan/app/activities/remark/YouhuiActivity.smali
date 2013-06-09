.class public Lcom/zhangdan/app/activities/remark/YouhuiActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06011b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->setContentView(I)V

    const v0, 0x7f060119

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/zhangdan/app/activities/remark/o;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/remark/o;-><init>(Lcom/zhangdan/app/activities/remark/YouhuiActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "youhui_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->d:I

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->d:I

    if-nez v1, :cond_1

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.51zhangdan.com/share/pre/prelist.html?platform=android&words="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.51zhangdan.com/share/pre/prelist.html?platform=android&words="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    const v0, 0x7f06011b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string v1, "bank_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    iget v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    if-nez v0, :cond_2

    const-string v0, "bank_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.51zhangdan.com/share/pre/card.html?platform=android&bank_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.51zhangdan.com/share/pre/card.html?platform=android&bank_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->c:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "youhui_type"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->d:I

    if-nez v0, :cond_0

    const-string v0, "keyword"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
