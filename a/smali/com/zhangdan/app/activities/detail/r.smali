.class final Lcom/zhangdan/app/activities/detail/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/r;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/r;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->removeDialog(I)V

    return-void
.end method