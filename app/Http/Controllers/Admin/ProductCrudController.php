<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ProductRequest as StoreRequest;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\ProductRequest as UpdateRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;

class ProductCrudController extends CrudController {

    public function setup() {

        /*
          |--------------------------------------------------------------------------
          | BASIC CRUD INFORMATION
          |--------------------------------------------------------------------------
         */
        $this->crud->setModel('App\Models\Product');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/product');
        $this->crud->setEntityNameStrings('product', 'products');

        /*
          |--------------------------------------------------------------------------
          | BASIC CRUD INFORMATION
          |--------------------------------------------------------------------------
         */

        $this->crud->setFromDb();
        $this->crud->setColumns(['images', 'brandId', 'familyId', 'reference', 'name', 'movementType', 'diameter']);
        $this->crud->setColumnDetails('movementType', ['label' => 'Movement Type']);
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

        // ------ CRUD FIELDS
        // $this->crud->addField($options, 'update/create/both');
        // $this->crud->addFields($array_of_arrays, 'update/create/both');
        // $this->crud->removeField('name', 'update/create/both');
        // $this->crud->removeFields($array_of_names, 'update/create/both');
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

//        $option = [// Number
//            'name' => 'price',
//            'label' => 'Price',
//            'type' => 'number',
//            // optionals
//            'attributes' => ["step" => "any"], // allow decimals
//                // 'prefix' => "$",
//                // 'suffix' => ".00",
//        ];
//        $this->crud->addField($option, 'update/create/both');
        $this->crud->removeField('price');
        $this->crud->addField([// image
            'label' => "Images",
            'name' => "images",
            'type' => 'image',
            'upload' => true,
            'disk' => 'watches',
            'crop' => false, // set to true to allow cropping, false to disable
            //'aspect_ratio' => 0, // ommit or set to 0 to allow any aspect ratio
            'prefix' => 'images/watches/' // in case you only store the filename in the database, this text will be prepended to the database value
        ]);


        // ------ CRUD COLUMNS
        // $this->crud->addColumn(); // add a single column, at the end of the stack
        // $this->crud->addColumns(); // add multiple columns, at the end of the stack
        // $this->crud->removeColumn('column_name'); // remove a column from the stack
        // $this->crud->removeColumns(['column_name_1', 'column_name_2']); // remove an array of columns from the stack
        // $this->crud->setColumnDetails('column_name', ['attribute' => 'value']); // adjusts the properties of the passed in column (by name)
        // $this->crud->setColumnsDetails(['column_1', 'column_2'], ['attribute' => 'value']);        


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
