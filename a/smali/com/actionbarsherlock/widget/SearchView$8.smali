.class Lcom/actionbarsherlock/widget/SearchView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$8;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$8;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onItemSelected(I)Z
    invoke-static {v0, p3}, Lcom/actionbarsherlock/widget/SearchView;->access$17(Lcom/actionbarsherlock/widget/SearchView;I)Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
