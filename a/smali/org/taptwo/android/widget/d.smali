.class final Lorg/taptwo/android/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method constructor <init>(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 0

    iput-object p1, p0, Lorg/taptwo/android/widget/d;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lorg/taptwo/android/widget/d;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/d;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-static {v1}, Lorg/taptwo/android/widget/ViewFlow;->a(Lorg/taptwo/android/widget/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lorg/taptwo/android/widget/d;->a:Lorg/taptwo/android/widget/ViewFlow;

    iget-object v1, p0, Lorg/taptwo/android/widget/d;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-static {v1}, Lorg/taptwo/android/widget/ViewFlow;->b(Lorg/taptwo/android/widget/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->setSelection(I)V

    return-void
.end method
