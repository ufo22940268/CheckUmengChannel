.class Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromViewHolder"
.end annotation


# instance fields
.field public discountWeeks:Landroid/view/ViewGroup;

.field public name:Landroid/widget/TextView;

.field public photo:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

.field public timeRange:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->this$1:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
