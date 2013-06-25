.class public Lcom/zhangdan/preferential/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final BEHAVIOR_CANCEL:I = 0x0

.field public static final BEHAVIOR_COMPLETE:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonBehavior:I

.field private mEditField:Landroid/widget/EditText;

.field private mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

.field private mListView:Landroid/widget/ListView;

.field private mTwoStateBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showSearchResult(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 63
    iget-object v1, p0, Lcom/zhangdan/preferential/SearchActivity;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;->push(Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mTwoStateBtn:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mButtonBehavior:I

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mTwoStateBtn:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mButtonBehavior:I

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 106
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 86
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget v1, p0, Lcom/zhangdan/preferential/SearchActivity;->mButtonBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/zhangdan/preferential/SearchActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->showSearchResult(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0           #keyword:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchActivity;->finish()V

    .line 77
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f090036
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedBundleInstance"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0300f7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->setContentView(I)V

    .line 39
    new-instance v0, Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    .line 41
    const v0, 0x7f09032a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mListView:Landroid/widget/ListView;

    .line 42
    const v0, 0x7f090329

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mEditField:Landroid/widget/EditText;

    .line 43
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mTwoStateBtn:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mTwoStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mTwoStateBtn:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mButtonBehavior:I

    .line 48
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/zhangdan/preferential/SearchActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, keyword:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->showSearchResult(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0300cb

    iget-object v2, p0, Lcom/zhangdan/preferential/SearchActivity;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;->getHistory()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SearchActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 109
    return-void
.end method
