.class Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;
.super Ljava/lang/Object;
.source "ShoppingSheetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;

    .line 286
    .local v0, holder:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 289
    .local v2, section:I
    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 291
    .local v1, position:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 292
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I
    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I

    .line 293
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I
    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$202(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I

    .line 294
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I
    invoke-static {v3, v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I

    .line 298
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I
    invoke-static {v3, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$202(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I

    .line 299
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
