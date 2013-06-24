.class public Lcom/zhangdan/preferential/SearchFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field private mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

.field private mHistoryView:Landroid/widget/ListView;

.field private mSearchField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    return-void
.end method

.method private showSearchResult(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 75
    iget-object v1, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;->push(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mActionBarView:Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->initActionBarView()V

    .line 82
    return-object v0
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mSearchField:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchFragment;->showSearchResult(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedBundleInstance"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const v0, 0x7f0300f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchFragment;->showSearchResult(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onResume()V

    .line 56
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300cb

    iget-object v3, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryManager:Lcom/zhangdan/preferential/utils/SearchHistoryManager;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/SearchHistoryManager;->getHistory()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 58
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchFragment;->mHistoryView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method
