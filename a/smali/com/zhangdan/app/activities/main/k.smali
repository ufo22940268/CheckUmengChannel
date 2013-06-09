.class final Lcom/zhangdan/app/activities/main/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/k;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/k;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->h(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/k;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->h(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
