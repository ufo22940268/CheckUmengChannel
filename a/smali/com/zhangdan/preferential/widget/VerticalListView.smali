.class public Lcom/zhangdan/preferential/widget/VerticalListView;
.super Landroid/widget/ListView;
.source "VerticalListView.java"


# instance fields
.field private mDiffX:F

.field private mDiffY:F

.field private mPrevX:F

.field private mPrevY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 38
    :pswitch_1
    iput v1, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffX:F

    .line 39
    iput v1, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffY:F

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevX:F

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevY:F

    goto :goto_0

    .line 45
    :pswitch_2
    iget v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffX:F

    .line 46
    iget v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffY:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevX:F

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mPrevY:F

    .line 51
    iget v0, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffX:F

    iget v1, p0, Lcom/zhangdan/preferential/widget/VerticalListView;->mDiffY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
