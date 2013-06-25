.class Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShopViewHolder"
.end annotation


# instance fields
.field public address:Landroid/widget/TextView;

.field public distance:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public photo:Landroid/widget/ImageView;

.field public tags:[Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->this$1:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    return-void
.end method
