.class public Lcom/zhangdan/app/activities/remark/CategoryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;,
        Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;,
        Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;
    }
.end annotation


# instance fields
.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

.field private mLastGroupPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I

    .line 38
    new-instance v0, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/remark/CategoryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;->removeMessages(I)V

    .line 90
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->finish()V

    .line 92
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070158

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 45
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method
