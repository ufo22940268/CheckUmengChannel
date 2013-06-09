.class public Lcom/zhangdan/app/activities/remark/CategoryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/widget/ExpandableListView;

.field private d:I

.field private e:Lcom/zhangdan/app/activities/remark/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->d:I

    new-instance v0, Lcom/zhangdan/app/activities/remark/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/h;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->e:Lcom/zhangdan/app/activities/remark/h;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/remark/CategoryActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->d:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->d:I

    return v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/h;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->e:Lcom/zhangdan/app/activities/remark/h;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->e:Lcom/zhangdan/app/activities/remark/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/h;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080151

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600af

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity;->c:Landroid/widget/ExpandableListView;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangdan/app/activities/remark/e;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/remark/e;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
