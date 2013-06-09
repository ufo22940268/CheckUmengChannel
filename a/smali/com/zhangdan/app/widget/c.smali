.class final Lcom/zhangdan/app/widget/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/widget/CustomScrollView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/c;->a:Lcom/zhangdan/app/widget/CustomScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
