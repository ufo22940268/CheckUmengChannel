.class public Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;
.super Landroid/widget/BaseAdapter;
.source "TagFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/TagFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubTagAdapter"
.end annotation


# instance fields
.field private subTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/TagFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/TagFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->subTags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->subTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 213
    move-object v0, p2

    .line 214
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/preferential/TagFragment;->access$400(Lcom/zhangdan/preferential/TagFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 218
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->subTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/Tag;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/Tag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->subTags:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Tag;

    .line 225
    .local v1, tag:Lcom/zhangdan/preferential/data/model/Tag;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_TAG_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "type_id"

    iget v3, v1, Lcom/zhangdan/preferential/data/model/Tag;->typeId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v2, "type_name"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/Tag;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/TagFragment;->startActivity(Landroid/content/Intent;)V

    .line 229
    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/TagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public setSubTags(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Tag;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->subTags:Ljava/util/List;

    .line 198
    return-void
.end method
