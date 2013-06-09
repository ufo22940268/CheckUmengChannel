.class final Lcom/zhangdan/app/activities/detail/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/i;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/i;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0, p2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/i;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    return-void
.end method
