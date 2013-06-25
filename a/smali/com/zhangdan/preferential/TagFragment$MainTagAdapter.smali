.class public Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;
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
    name = "MainTagAdapter"
.end annotation


# instance fields
.field private checkedPosition:I

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/IconTag;",
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
    .line 129
    iput-object p1, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->checkedPosition:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->mTags:Ljava/util/List;

    return-void
.end method

.method private enableItem(Landroid/view/View;Lcom/zhangdan/preferential/data/model/IconTag;)V
    .locals 3
    .parameter "view"
    .parameter "it"

    .prologue
    .line 184
    move-object v0, p1

    check-cast v0, Lcom/zhangdan/preferential/widget/IconTagView;

    .line 185
    .local v0, tagView:Lcom/zhangdan/preferential/widget/IconTagView;
    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/IconTagView;->toggle()V

    .line 187
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;
    invoke-static {v1}, Lcom/zhangdan/preferential/TagFragment;->access$500(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    move-result-object v1

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->setSubTags(Ljava/util/List;)V

    .line 188
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;
    invoke-static {v1}, Lcom/zhangdan/preferential/TagFragment;->access$500(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method private uncheckAllChilds(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/IconTagView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/IconTagView;->uncheck()V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->mTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/preferential/TagFragment;->access$400(Lcom/zhangdan/preferential/TagFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300fa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/IconTagView;

    .line 159
    .local v1, tagView:Lcom/zhangdan/preferential/widget/IconTagView;
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->mTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/IconTag;

    .line 160
    .local v0, it:Lcom/zhangdan/preferential/data/model/IconTag;
    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->fillData(Lcom/zhangdan/preferential/data/model/IconTag;)V

    .line 162
    iget v2, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->checkedPosition:I

    if-ne v2, p1, :cond_1

    .line 163
    invoke-direct {p0, v1, v0}, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->enableItem(Landroid/view/View;Lcom/zhangdan/preferential/data/model/IconTag;)V

    .line 168
    :goto_1
    return-object v1

    .end local v0           #it:Lcom/zhangdan/preferential/data/model/IconTag;
    .end local v1           #tagView:Lcom/zhangdan/preferential/widget/IconTagView;
    :cond_0
    move-object v1, p2

    .line 156
    check-cast v1, Lcom/zhangdan/preferential/widget/IconTagView;

    .restart local v1       #tagView:Lcom/zhangdan/preferential/widget/IconTagView;
    goto :goto_0

    .line 165
    .restart local v0       #it:Lcom/zhangdan/preferential/data/model/IconTag;
    :cond_1
    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/IconTagView;->uncheck()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 173
    iput p3, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->checkedPosition:I

    .line 174
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/IconTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, iconTags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/IconTag;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->mTags:Ljava/util/List;

    .line 148
    return-void
.end method
