@comments @acceptance

Feature: Comments

  @task_id @comment_id
  Scenario:  Verify GET all comment is returning all data correctly
      As a user I want to GET the comment from TODOIST API

    Given I set the base url and headers
    When I call to tasks endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response


    @task_id
    Scenario: Verify POST comment creates a comment in the task provided
      As a user I want to create a comment with the task_id provided from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "comment data" as parameter
    """
    {
      "task_id": "task_id"
      "content": "Need one bottle of milk"
    }
    """
    Then I receive a 200 status code in response


   @task_id @comment_id
    Scenario: Verify POST comment updates a comment in the task provided
      As a user I want to update a comment with the task_id provided from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "comment data" as parameter
    """
    {
      "content": "Comment updated for need one bottle of milk"
    }
    """
    Then I receive a 200 status code in response


  @task_id @comment_id
  Scenario:  Verify DELETE task delete the comment correctly
      As a user I want to delete a task from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "DELETE" method using the "comment_id" as parameter
    Then I receive a 204 status code in response
