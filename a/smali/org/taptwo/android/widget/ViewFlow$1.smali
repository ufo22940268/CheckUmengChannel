.class Lorg/taptwo/android/widget/ViewFlow$1;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/taptwo/android/widget/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method constructor <init>(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow$1;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow$1;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow$1;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #getter for: Lorg/taptwo/android/widget/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lorg/taptwo/android/widget/ViewFlow;->access$000(Lorg/taptwo/android/widget/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow$1;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow$1;->this$0:Lorg/taptwo/android/widget/ViewFlow;

    #getter for: Lorg/taptwo/android/widget/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v1}, Lorg/taptwo/android/widget/ViewFlow;->access$100(Lorg/taptwo/android/widget/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->setSelection(I)V

    .line 86
    return-void
.end method
