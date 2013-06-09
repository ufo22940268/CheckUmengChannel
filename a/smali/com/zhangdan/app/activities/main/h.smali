.class final Lcom/zhangdan/app/activities/main/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/h;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/h;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->g(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    return-void
.end method
