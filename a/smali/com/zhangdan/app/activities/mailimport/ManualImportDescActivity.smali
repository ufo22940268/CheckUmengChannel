.class public Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "ManualImportDescActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private onPressBack()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->finish()V

    .line 54
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->onPressBack()V

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09008c

    if-ne v2, v3, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->onPressBack()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900e3

    if-ne v2, v3, :cond_0

    .line 45
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 46
    .local v0, clipManager:Landroid/text/ClipboardManager;
    const v2, 0x7f0900e2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, tvMailAccount:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v2, 0x7f070182

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030039

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f09008c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v2, 0x7f0900e3

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v2, 0x7f0900e2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, tvMailAccount:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 31
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v1, :cond_0

    .line 32
    const v2, 0x7f070176

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method
