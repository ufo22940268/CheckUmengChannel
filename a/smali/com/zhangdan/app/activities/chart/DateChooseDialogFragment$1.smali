.class Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;
.super Ljava/lang/Object;
.source "DateChooseDialogFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-nez p3, :cond_1

    .line 84
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;->onDateChoosed(II)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->dismiss()V

    .line 103
    :goto_0
    return v2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$100(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$100(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mChooseDateAdapter:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$200(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 91
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$100(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v0

    if-ne v0, p3, :cond_2

    .line 92
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 93
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    const/4 v1, -0x1

    #setter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$102(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;I)I

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$100(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 96
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #setter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$102(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;I)I

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #setter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I
    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$102(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;I)I

    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
