.class public Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlidingDrawerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconArr:[I

.field private mLabelArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mLabelArr:[Ljava/lang/String;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x1

    const v2, 0x7f020321

    aput v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x0

    const v2, 0x7f020334

    aput v2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x2

    const v2, 0x7f020328

    aput v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x3

    const v2, 0x7f020327

    aput v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x4

    const v2, 0x7f02032b

    aput v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x5

    const v2, 0x7f02032e

    aput v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x6

    const v2, 0x7f020324

    aput v2, v0, v1

    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    const/4 v1, 0x7

    const v2, 0x7f020331

    aput v2, v0, v1

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mLabelArr:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mLabelArr:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    move-object v3, p2

    .line 57
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 58
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 59
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030101

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .local v0, imgIcon:Landroid/widget/ImageView;
    const v4, 0x7f090332

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, tvContent:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mLabelArr:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;->mIconArr:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    return-object v3
.end method
