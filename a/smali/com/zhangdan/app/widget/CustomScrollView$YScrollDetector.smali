.class Lcom/zhangdan/app/widget/CustomScrollView$YScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/widget/CustomScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YScrollDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/widget/CustomScrollView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/CustomScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/app/widget/CustomScrollView$YScrollDetector;->this$0:Lcom/zhangdan/app/widget/CustomScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 54
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
