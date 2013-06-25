.class Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;
.super Ljava/lang/Object;
.source "HorizontalScrollBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/HorizontalScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationListener"
.end annotation


# instance fields
.field private mFromIndex:I

.field private mToIndex:I

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;II)V
    .locals 0
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mFromIndex:I

    .line 129
    iput p3, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mToIndex:I

    .line 130
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mToIndex:I

    #calls: Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getItemView(I)Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->access$000(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mToIndex:I

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/DateUtils;->markLastOpenDay(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mToIndex:I

    #calls: Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getItemView(I)Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->access$000(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->this$0:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;->mFromIndex:I

    #calls: Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getItemView(I)Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->access$000(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    return-void
.end method
