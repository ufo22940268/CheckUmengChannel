.class final Lcom/zhangdan/app/activities/detail/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/h;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/h;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    return-void
.end method
