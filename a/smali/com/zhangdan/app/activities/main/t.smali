.class final Lcom/zhangdan/app/activities/main/t;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/main/SelectePicActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/t;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v3, 0x7f020253

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/main/u;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/main/u;-><init>(Lcom/zhangdan/app/activities/main/t;)V

    const v0, 0x7f06031c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/u;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/zhangdan/app/activities/main/u;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->b(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v1

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->c(Lcom/zhangdan/app/activities/main/SelectePicActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/u;->a:Landroid/widget/ImageView;

    const v1, 0x7f020255

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/u;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/zhangdan/app/activities/main/u;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/zhangdan/app/activities/main/u;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    new-instance v1, Lcom/zhangdan/app/e/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/e/f;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/e/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/e/f;->a(Lcom/zhangdan/app/e/b;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/e/f;->a()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    new-instance v1, Lcom/zhangdan/app/e/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/e/f;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/e/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/e/f;->a(Lcom/zhangdan/app/e/b;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/e/f;->b()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->b(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/t;->a:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/t;->notifyDataSetChanged()V

    goto :goto_0
.end method
