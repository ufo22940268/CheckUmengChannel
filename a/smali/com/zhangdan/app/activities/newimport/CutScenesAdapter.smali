.class public Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CutScenesAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImgResIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;->mImgResIds:[I

    .line 17
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;->mContext:Landroid/content/Context;

    .line 18
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x81t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x85t 0x2t 0x2t 0x7ft
        0x86t 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;->mImgResIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    move-object v1, p2

    .line 41
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 42
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #view:Landroid/view/View;
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v1       #view:Landroid/view/View;
    move-object v2, v1

    .line 43
    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    move-object v0, v1

    .line 45
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, img:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;->mImgResIds:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    return-object v1
.end method
