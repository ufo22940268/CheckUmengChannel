.class final Lcom/zhangdan/app/activities/remark/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/a;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/a;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/a;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    return-void
.end method
