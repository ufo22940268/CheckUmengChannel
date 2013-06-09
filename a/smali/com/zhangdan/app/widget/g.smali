.class final Lcom/zhangdan/app/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/widget/f;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/g;->a:Lcom/zhangdan/app/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/g;->a:Lcom/zhangdan/app/widget/f;

    invoke-static {v0}, Lcom/zhangdan/app/widget/f;->a(Lcom/zhangdan/app/widget/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/g;->a:Lcom/zhangdan/app/widget/f;

    invoke-static {v0}, Lcom/zhangdan/app/widget/f;->a(Lcom/zhangdan/app/widget/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
