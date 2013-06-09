.class final Lcom/zhangdan/app/activities/detail/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/a/b;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/b;->a(Lcom/zhangdan/app/activities/detail/a/b;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/a/b;->a(Lcom/zhangdan/app/activities/detail/a/b;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/detail/a/b;->a(Lcom/zhangdan/app/activities/detail/a/b;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/c;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->notifyDataSetChanged()V

    goto :goto_0
.end method
