.class final Lcom/zhangdan/preferential/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/PromSectionView;

.field private b:Lcom/zhangdan/preferential/data/model/i;

.field private c:Lcom/a/a/a/f/b;

.field private d:Lcom/a/a/a/a;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/PromSectionView;Lcom/zhangdan/preferential/data/model/i;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/g;->a:Lcom/zhangdan/preferential/widget/PromSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/preferential/widget/g;->b:Lcom/zhangdan/preferential/data/model/i;

    iput-object p3, p0, Lcom/zhangdan/preferential/widget/g;->c:Lcom/a/a/a/f/b;

    iput-object p4, p0, Lcom/zhangdan/preferential/widget/g;->d:Lcom/a/a/a/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/g;->b:Lcom/zhangdan/preferential/data/model/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/g;->a:Lcom/zhangdan/preferential/widget/PromSectionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/g;->b:Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/g;->d:Lcom/a/a/a/a;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/preferential/a/z;->a(Landroid/content/Context;Lcom/zhangdan/preferential/data/model/i;Lcom/a/a/a/a;)V

    goto :goto_0
.end method
