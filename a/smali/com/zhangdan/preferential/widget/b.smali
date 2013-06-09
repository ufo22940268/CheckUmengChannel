.class public final Lcom/zhangdan/preferential/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/DetailSectionView;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/b;->a:Lcom/zhangdan/preferential/widget/DetailSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/preferential/widget/b;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/b;->a:Lcom/zhangdan/preferential/widget/DetailSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/DetailSectionView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/b;->a:Lcom/zhangdan/preferential/widget/DetailSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/DetailSectionView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    return-void
.end method
