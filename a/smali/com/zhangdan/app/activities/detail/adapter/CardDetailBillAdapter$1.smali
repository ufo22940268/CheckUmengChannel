.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;
.super Ljava/lang/Object;
.source "CardDetailBillAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 217
    .local v0, position:I
    add-int/lit8 v0, v0, -0x2

    .line 218
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    const/4 v2, -0x1

    #setter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$002(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;I)I

    .line 220
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #setter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I
    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$002(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;I)I

    .line 224
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
