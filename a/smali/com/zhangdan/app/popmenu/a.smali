.class public Lcom/zhangdan/app/popmenu/a;
.super Lza/co/immedia/pinnedheaderlistview/c;


# instance fields
.field protected a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/popmenu/a;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/c;->b()I

    move-result v0

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 5

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/popmenu/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/d;

    const v1, 0x7f0602ac

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0602ad

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602ae

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/d;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300c1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/c;

    const v1, 0x7f0602af

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/popmenu/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/c;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/popmenu/c;->a(I)Lcom/zhangdan/app/popmenu/d;

    move-result-object v0

    return-object v0
.end method
