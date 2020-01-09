const db = require('../data/db-config');

function find(user_id){

    return db('schemes');
}

function findById(id){

    return db('schemes')
        .where( { id } )
        .first();
}

function findSteps(id){

    return db('steps')
        .where( { scheme_id: id } )
        .orderBy('step_number');
}

function add(schemeData){

    return db('schemes')
    .insert(

        schemeData

    )
}

async function addStep(stepData, id){

    await db('steps')
        .insert(
            stepData
        )

    return stepData
}

async function update(changes, id){
    
    await db('schemes')
        .where({ id })
        .update( changes )
        
    return findById(id)

}

function remove(id){

    return db('schemes')
        .where( { id } )
        .del()
}

module.exports = {
    
    find,
    findById,
    findSteps,
    add,
    addStep,
    update, 
    remove

}

