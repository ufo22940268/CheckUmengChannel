.class final Lcom/zhangdan/app/activities/shopping/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/shopping/d;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/zhangdan/app/activities/shopping/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/g;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/d;->b(Lcom/zhangdan/app/activities/shopping/d;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/d;->c(Lcom/zhangdan/app/activities/shopping/d;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/shopping/d;->b(Lcom/zhangdan/app/activities/shopping/d;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v2, v1}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/shopping/d;->b(Lcom/zhangdan/app/activities/shopping/d;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/f;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    goto :goto_0
.end method
