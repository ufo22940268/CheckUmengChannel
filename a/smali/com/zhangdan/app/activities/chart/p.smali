.class final Lcom/zhangdan/app/activities/chart/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/n;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/n;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->d(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    sub-int/2addr v0, p3

    add-int/lit8 v1, v0, 0x1

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/r;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/r;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/zhangdan/app/activities/chart/r;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/n;->dismiss()V

    return v3

    :cond_1
    if-ne p3, v3, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/p;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->e(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 v0, p4, 0xc

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
