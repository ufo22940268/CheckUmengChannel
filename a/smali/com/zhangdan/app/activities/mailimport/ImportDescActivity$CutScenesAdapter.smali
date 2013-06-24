.class Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImportDescActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CutScenesAdapter"
.end annotation


# instance fields
.field private mImgResIds:[I

.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->mImgResIds:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
        0x83t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x85t 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->mImgResIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    move-object v1, p2

    .line 54
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #view:Landroid/view/View;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v1       #view:Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    move-object v0, v1

    .line 59
    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, img:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->mImgResIds:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, position:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->finish()V

    .line 72
    :cond_0
    return-void
.end method
