.class final Lcom/zhangdan/app/activities/main/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/widget/d;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->f(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->a(Lcom/zhangdan/app/activities/main/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->b(Lcom/zhangdan/app/activities/main/a;)F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->c(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a;->d(Lcom/zhangdan/app/activities/main/a;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->e(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/b;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->c(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
