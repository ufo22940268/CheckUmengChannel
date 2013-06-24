.class Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/taptwo/android/widget/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method constructor <init>(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 724
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    iget-object v3, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #getter for: Lorg/taptwo/android/widget/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v3}, Lorg/taptwo/android/widget/ViewFlow;->access$200(Lorg/taptwo/android/widget/ViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 725
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 726
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #getter for: Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lorg/taptwo/android/widget/ViewFlow;->access$300(Lorg/taptwo/android/widget/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 727
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #getter for: Lorg/taptwo/android/widget/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lorg/taptwo/android/widget/ViewFlow;->access$300(Lorg/taptwo/android/widget/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #setter for: Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v2, v0}, Lorg/taptwo/android/widget/ViewFlow;->access$102(Lorg/taptwo/android/widget/ViewFlow;I)I

    .line 733
    .end local v0           #index:I
    :cond_0
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow$AdapterDataSetObserver;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #calls: Lorg/taptwo/android/widget/ViewFlow;->resetFocus()V
    invoke-static {v2}, Lorg/taptwo/android/widget/ViewFlow;->access$400(Lorg/taptwo/android/widget/ViewFlow;)V

    .line 734
    return-void

    .line 726
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method
