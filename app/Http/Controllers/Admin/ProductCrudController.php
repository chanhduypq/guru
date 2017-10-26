<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ProductRequest as StoreRequest;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\ProductRequest as UpdateRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;

class ProductCrudController extends CrudController {

    public function setup() {

        $url = $_SERVER['REQUEST_URI'];
        $temp = explode('/', $url);
        if ((count($_POST) > 0 && isset($_POST['_token'])) || strpos($url, 'create') !== false || strpos($url, 'edit') !== false || ctype_digit($temp[count($temp) - 1])) {
            $this->crud->setModel('App\Models\Product');
        } else {
            $this->crud->setModel('App\Models\ProductView');
        }
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/product');
        $this->crud->setEntityNameStrings('product', 'products');


        $this->crud->setFromDb();
        if ((count($_POST) > 0 && isset($_POST['_token'])) || strpos($url, 'create') !== false || strpos($url, 'edit') !== false) {
            $this->crud->setColumns(['images', 'brandId', 'familyId', 'reference', 'name', 'movementType', 'diameter']);
            $this->crud->addColumn([
                'label' => "", // Table column heading
                'type' => "model_function",
                'name' => "images",
                'function_name' => 'getImage',
            ]);

            $this->crud->addField([
                'name' => 'movementType',
                'label' => "Movement Type"
            ]);
            $this->crud->addFilter([// dropdown filter
                'name' => 'brandId',
                'type' => 'dropdown',
                'label' => 'Barand'
                    ], function() { // the options that show up in the select2
                return \App\Models\Brand::all()->pluck('name', 'id')->toArray();
            }, function($value) { // if the filter is active
                $this->crud->addClause('where', 'brandId', $value);
            });
        }
        else{

            $this->crud->setColumnDetails('images', ['label' => '','type' => "model_function",'function_name' => 'getImage']);
            $this->crud->setColumnDetails('brand_name', ['label' => 'Brand']);
            $this->crud->setColumnDetails('family_name', ['label' => 'Family']);
            $this->crud->addFilter([// dropdown filter
                'name' => 'brandId',
                'type' => 'dropdown',
                'label' => 'Barand'
                    ], function() { // the options that show up in the select2
                return \App\Models\Brand::all()->pluck('name', 'id')->toArray();
            }, function($value) { // if the filter is active
                $this->crud->addClause('where', 'brandId', $value);
            });
        }
        $this->crud->setColumnDetails('movementType', ['label' => 'Movement Type']);

        if ((count($_POST) > 0 && isset($_POST['_token'])) || strpos($url, 'create') !== false || strpos($url, 'edit') !== false) {
            $option = [// Select
                'label' => "Family",
                'type' => 'select',
                'name' => 'familyId', // the db column for the foreign key
                'entity' => 'family', // the method that defines the relationship in your Model
                'attribute' => 'name', // foreign key attribute that is shown to user
                'model' => "App\Models\Family", // foreign key model
            ];
            $this->crud->addField($option, 'update/create/both');

            $option = [// Select
                'label' => "Brand",
                'type' => 'select',
                'name' => 'brandId', // the db column for the foreign key
                'entity' => 'family', // the method that defines the relationship in your Model
                'attribute' => 'name', // foreign key attribute that is shown to user
                'model' => "App\Models\Brand", // foreign key model
            ];
            $this->crud->addField($option, 'update/create/both');
        }
        
        if ((count($_POST) > 0 && isset($_POST['_token'])) || strpos($url, 'create') !== false || strpos($url, 'edit') !== false) {
            $this->crud->removeField('price');
            $this->crud->addField([// image
                'label' => "Images",
                'name' => "images",
                'type' => 'image',
                'upload' => true,
                'disk' => 'watches',
                'crop' => false, // set to true to allow cropping, false to disable
                'prefix' => 'images/watches/' // in case you only store the filename in the database, this text will be prepended to the database value
            ]);
        }
        


        // ------ CRUD COLUMNS
        // $this->crud->addColumn(); // add a single column, at the end of the stack
        // $this->crud->addColumns(); // add multiple columns, at the end of the stack
        // $this->crud->removeColumn('column_name'); // remove a column from the stack
        // $this->crud->removeColumns(['column_name_1', 'column_name_2']); // remove an array of columns from the stack
        // $this->crud->setColumnDetails('column_name', ['attribute' => 'value']); // adjusts the properties of the passed in column (by name)
        // $this->crud->setColumnsDetails(['column_1', 'column_2'], ['attribute' => 'value']);        


        if ((count($_POST) > 0 && isset($_POST['_token'])) || strpos($url, 'create') !== false || strpos($url, 'edit') !== false) {
            $this->crud->addColumn([
                'type' => 'select',
                'name' => 'brandId',
                'entity' => 'brand',
                'attribute' => 'name',
                'model' => 'App\Models\Brand'
            ]);
            $this->crud->addColumn([
                'type' => 'select',
                'name' => 'familyId',
                'entity' => 'family',
                'attribute' => 'name',
                'model' => 'App\Models\Family'
            ]);
        }
        
        // ------ CRUD BUTTONS
        // possible positions: 'beginning' and 'end'; defaults to 'beginning' for the 'line' stack, 'end' for the others;
        // $this->crud->addButton($stack, $name, $type, $content, $position); // add a button; possible types are: view, model_function
        // $this->crud->addButtonFromModelFunction($stack, $name, $model_function_name, $position); // add a button whose HTML is returned by a method in the CRUD model
        // $this->crud->addButtonFromView($stack, $name, $view, $position); // add a button whose HTML is in a view placed at resources\views\vendor\backpack\crud\buttons
        // $this->crud->removeButton($name);
        // $this->crud->removeButtonFromStack($name, $stack);
        // $this->crud->removeAllButtons();
        // $this->crud->removeAllButtonsFromStack('line');
        // ------ CRUD ACCESS
        // $this->crud->allowAccess(['list', 'create', 'update', 'reorder', 'delete']);
        // $this->crud->denyAccess(['list', 'create', 'update', 'reorder', 'delete']);
        // ------ CRUD REORDER
        // $this->crud->enableReorder('label_name', MAX_TREE_LEVEL);
        // NOTE: you also need to do allow access to the right users: $this->crud->allowAccess('reorder');
        // ------ CRUD DETAILS ROW
        // $this->crud->enableDetailsRow();
        // NOTE: you also need to do allow access to the right users: $this->crud->allowAccess('details_row');
        // NOTE: you also need to do overwrite the showDetailsRow($id) method in your EntityCrudController to show whatever you'd like in the details row OR overwrite the views/backpack/crud/details_row.blade.php
        // ------ REVISIONS
        // You also need to use \Venturecraft\Revisionable\RevisionableTrait;
        // Please check out: https://laravel-backpack.readme.io/docs/crud#revisions
        // $this->crud->allowAccess('revisions');
        // ------ AJAX TABLE VIEW
        // Please note the drawbacks of this though:
        // - 1-n and n-n columns are not searchable
        // - date and datetime columns won't be sortable anymore
        $this->crud->enableAjaxTable();

        // ------ DATATABLE EXPORT BUTTONS
        // Show export to PDF, CSV, XLS and Print buttons on the table view.
        // Does not work well with AJAX datatables.
        // $this->crud->enableExportButtons();
        // ------ ADVANCED QUERIES
        // $this->crud->addClause('active');
        // $this->crud->addClause('type', 'car');
        // $this->crud->addClause('where', 'name', '==', 'car');
        // $this->crud->addClause('whereName', 'car');
        // $this->crud->addClause('whereHas', 'posts', function($query) {
        //     $query->activePosts();
        // });
        // $this->crud->addClause('withoutGlobalScopes');
        // $this->crud->addClause('withoutGlobalScope', VisibleScope::class);
        // $this->crud->with(); // eager load relationships
        // $this->crud->orderBy();
        // $this->crud->groupBy();
        // $this->crud->limit();
    }
    
    public function index()
    {
        $this->crud->hasAccessOrFail('list');

        $this->data['crud'] = $this->crud;
        $this->data['title'] = ucfirst($this->crud->entity_name_plural);

        // get all entries if AJAX is not enabled
        if (! $this->data['crud']->ajaxTable()) {
            $this->data['entries'] = $this->data['crud']->getEntries();
        }

        // load the view from /resources/views/vendor/backpack/crud/ if it exists, otherwise load the one in the package
        return view($this->crud->getListView(), $this->data);
    }
    
    public function search() {
        $this->crud->hasAccessOrFail('list');

        // create an array with the names of the searchable columns
        $columns = collect($this->crud->columns)
                    ->reject(function ($column, $key) {
                        // the select_multiple, model_function and model_function_attribute columns are not searchable
            return isset($column['type']) && ($column['type'] == 'select_multiple' || $column['type'] == 'model_function_attribute');
                    })
                    ->pluck('name')
                    // add the primary key, otherwise the buttons won't work
                    ->merge($this->crud->model->getKeyName())
                    ->toArray();

        // structure the response in a DataTable-friendly way
        $dataTable = new \LiveControl\EloquentDataTable\DataTable($this->crud->query, $columns);

        // make the datatable use the column types instead of just echoing the text
        $dataTable->setFormatRowFunction(function ($entry) {
            // get the actual HTML for each row's cell
            $row_items = $this->crud->getRowViews($entry, $this->crud);

            // add the buttons as the last column
            if ($this->crud->buttons->where('stack', 'line')->count()) {
                $row_items[] = \View::make('crud::inc.button_stack', ['stack' => 'line'])
                                ->with('crud', $this->crud)
                                ->with('entry', $entry)
                                ->render();
            }

            // add the details_row buttons as the first column
            if ($this->crud->details_row) {
                array_unshift($row_items, \View::make('crud::columns.details_row_button')
                                ->with('crud', $this->crud)
                                ->with('entry', $entry)
                                ->render());
            }

            return $row_items;
        });

        return $dataTable->make();
    }

    public function store(StoreRequest $request) {
        // your additional operations before save here
        $redirect_location = parent::storeCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request) {
        // your additional operations before save here
        $redirect_location = parent::updateCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

}
