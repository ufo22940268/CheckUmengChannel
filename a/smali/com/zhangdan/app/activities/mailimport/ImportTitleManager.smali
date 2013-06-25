.class public Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;
.super Ljava/lang/Object;
.source "ImportTitleManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mContentView:Landroid/view/View;

.field private mCurrImportFlag:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter "currImportFlag"

    .prologue
    const v2, 0x7f090042

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mContentView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mContentView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mContentView:Landroid/view/View;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput p3, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    .line 47
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    if-nez v0, :cond_1

    .line 48
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->setTitle(I)V

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 49
    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 50
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->setTitle(I)V

    goto :goto_0

    .line 51
    :cond_2
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 52
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->setTitle(I)V

    goto :goto_0

    .line 53
    :cond_3
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 54
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->setTitle(I)V

    goto :goto_0

    .line 57
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090039

    if-ne v2, v3, :cond_2

    .line 79
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090041

    if-ne v2, v3, :cond_4

    .line 81
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v2, :cond_3

    .line 82
    new-instance v2, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 83
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    invoke-direct {v0, v2, v3}, Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;-><init>(Landroid/content/Context;I)V

    .line 84
    .local v0, adapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 85
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    .line 86
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    .end local v0           #adapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090042

    if-ne v2, v3, :cond_0

    .line 91
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-string v3, "mail_help"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 68
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 70
    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 72
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mBillImporPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 105
    :cond_1
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mCurrImportFlag:I

    if-lt p3, v1, :cond_2

    .line 106
    add-int/lit8 p3, p3, 0x1

    .line 107
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_4

    .line 109
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 110
    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 112
    :cond_5
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 114
    :cond_6
    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleResId"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->mContentView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-void
.end method
